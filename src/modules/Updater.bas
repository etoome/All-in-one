Attribute VB_Name = "Updater"
Option Explicit

' Checks GitHub Releases for a newer version and, on user request, installs it.
' Pure VBA + built-in Windows components, so it needs no PowerShell, scheduled task or admin rights.

Private Declare PtrSafe Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteW" (ByVal hwnd As LongPtr, ByVal lpOperation As LongPtr, ByVal lpFile As LongPtr, ByVal lpParameters As LongPtr, ByVal lpDirectory As LongPtr, ByVal nShowCmd As Long) As LongPtr
Private Declare PtrSafe Function URLDownloadToFileW Lib "urlmon" (ByVal pCaller As LongPtr, ByVal szURL As LongPtr, ByVal szFileName As LongPtr, ByVal dwReserved As Long, ByVal lpfnCB As LongPtr) As Long
Private Declare PtrSafe Function DeleteUrlCacheEntryW Lib "wininet" (ByVal lpszUrlName As LongPtr) As Long
Private Declare PtrSafe Function BCryptOpenAlgorithmProvider Lib "bcrypt.dll" (ByRef phAlgorithm As LongPtr, ByVal pszAlgId As LongPtr, ByVal pszImplementation As LongPtr, ByVal dwFlags As Long) As Long
Private Declare PtrSafe Function BCryptCloseAlgorithmProvider Lib "bcrypt.dll" (ByVal hAlgorithm As LongPtr, ByVal dwFlags As Long) As Long
Private Declare PtrSafe Function BCryptHash Lib "bcrypt.dll" (ByVal hAlgorithm As LongPtr, ByVal pbSecret As LongPtr, ByVal cbSecret As Long, ByVal pbInput As LongPtr, ByVal cbInput As Long, ByVal pbOutput As LongPtr, ByVal cbOutput As Long) As Long

Private Const MSG_TITLE As String = "All-in-one"
Private Const REPO_URL As String = "https://github.com/" & UPDATE_REPO
Private Const SETTINGS_APP As String = "All-in-one"
Private Const SETTINGS_SECTION As String = "Update"
Private Const CHECK_INTERVAL_HOURS As Long = 24
Private Const SNOOZE_DAYS As Long = 7
Private Const CHECK_TIMEOUT_SECONDS As Long = 15
Private Const DOWNLOAD_TIMEOUT_SECONDS As Long = 90
Private Const MAX_DOWNLOAD_BYTES As Long = 52428800
Private Const FILE_PREFIX As String = "All-in-one-v"
Private Const FILE_SUFFIX As String = ".ppam"

Private Const STAGE_MANIFEST As Long = 1
Private Const STAGE_FEED As Long = 2

Private gRequest As Object
Private gStage As Long
Private gDeadline As Date
Private gLatestVersion As String
Private gLatestFile As String
Private gLatestSha As String
Private gSnoozedVersion As String
Private gSnoozedUntil As Date
Private gUpdateAvailable As Boolean
Private gBusy As Boolean
Private gProgress As Boolean
Private gStepFraction As Double
' ---- Ribbon callbacks ----

Sub GetUpdateVisible(control As IRibbonControl, ByRef returnedVal)
    returnedVal = gUpdateAvailable And Not IsSnoozed()
End Sub

Sub GetUpdateLabel(control As IRibbonControl, ByRef returnedVal)
    returnedVal = "Update to v" & gLatestVersion
End Sub

Sub OpenChangelog(control As IRibbonControl)
    OpenUrl REPO_URL & "/blob/main/CHANGELOG.md"
End Sub

Sub RemindMeLater(control As IRibbonControl)
    If Not gUpdateAvailable Then Exit Sub
    gSnoozedVersion = gLatestVersion
    gSnoozedUntil = DateAdd("d", SNOOZE_DAYS, Now)
    SaveSetting SETTINGS_APP, SETTINGS_SECTION, "SnoozedVersion", gSnoozedVersion
    SaveSetting SETTINGS_APP, SETTINGS_SECTION, "SnoozedUntil", Format$(gSnoozedUntil, "yyyymmddhhnnss")
    RefreshRibbon
End Sub

Sub InstallUpdate(control As IRibbonControl)
    If gBusy Or Not gUpdateAvailable Then Exit Sub
    gBusy = True
    On Error GoTo Done
    RunInstall
Done:
    gBusy = False
End Sub

' ---- Check ----

' Shows a cached result immediately, then refreshes it in the background at most once per interval.
Public Sub StartUpdateCheck()
    On Error GoTo Failed
    LoadCachedUpdate
    If Not CheckIsDue() Then Exit Sub
    BeginRequest REPO_URL & "/releases/latest/download/update.txt", STAGE_MANIFEST
    Exit Sub
Failed:
    Set gRequest = Nothing
End Sub

' Called from application events (VBA has no timers in PowerPoint); cheap when nothing is pending.
Public Sub PollUpdateCheck()
    If gRequest Is Nothing Then Exit Sub
    Dim stage As Long
    Dim body As String
    Dim found As Boolean

    On Error GoTo Failed
    If Not RequestDone() Then
        If Now > gDeadline Then
            gRequest.abort
            GoTo Failed
        End If
        Exit Sub
    End If

    stage = gStage
    If gRequest.Status = 200 Then body = gRequest.responseText
    Set gRequest = Nothing
    gStage = 0

    If stage = STAGE_MANIFEST Then found = ParseManifest(body) Else found = ParseFeed(body)
    If found Then
        SaveSetting SETTINGS_APP, SETTINGS_SECTION, "LastCheck", Format$(Now, "yyyymmddhhnnss")
        SaveCachedUpdate
        gUpdateAvailable = (CompareVersions(gLatestVersion, APP_VERSION) > 0)
        RefreshRibbon
    ElseIf stage = STAGE_MANIFEST Then
        BeginFeedRequest
    End If
    Exit Sub
Failed:
    If stage = 0 Then stage = gStage
    Set gRequest = Nothing
    gStage = 0
    If stage = STAGE_MANIFEST Then BeginFeedRequest
End Sub

' The release asset may be blocked while the Atom feed still works; the feed can only announce, not install.
Private Sub BeginFeedRequest()
    On Error GoTo Failed
    BeginRequest REPO_URL & "/releases.atom", STAGE_FEED
    Exit Sub
Failed:
    Set gRequest = Nothing
    gStage = 0
End Sub

' The asset URL redirects to another host, which XMLHTTP refuses (status 0), so the manifest uses WinHTTP.
Private Sub BeginRequest(ByVal url As String, ByVal stage As Long)
    If stage = STAGE_MANIFEST Then Set gRequest = CreateWinHttp() Else Set gRequest = CreateHttp()
    gRequest.Open "GET", url, True
    gRequest.setRequestHeader "User-Agent", "All-in-one/" & APP_VERSION
    gRequest.Send
    gStage = stage
    gDeadline = DateAdd("s", CHECK_TIMEOUT_SECONDS, Now)
End Sub

Private Function RequestDone() As Boolean
    If gStage = STAGE_MANIFEST Then
        RequestDone = gRequest.WaitForResponse(0)
    Else
        RequestDone = (gRequest.readyState = 4)
    End If
End Function

Private Function CreateWinHttp() As Object
    Set CreateWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1")
End Function

' XMLHTTP uses WinINet, so it follows the user's proxy settings and credentials.
Private Function CreateHttp() As Object
    On Error Resume Next
    Set CreateHttp = CreateObject("MSXML2.XMLHTTP.6.0")
    If CreateHttp Is Nothing Then Set CreateHttp = CreateObject("MSXML2.XMLHTTP")
    If CreateHttp Is Nothing Then Set CreateHttp = CreateObject("Microsoft.XMLHTTP")
End Function

Private Function CheckIsDue() As Boolean
    Dim stamp As String
    Dim lastCheck As Date

    stamp = GetSetting(SETTINGS_APP, SETTINGS_SECTION, "LastCheck", "")
    lastCheck = ParseStamp(stamp)
    If lastCheck = 0 Then
        CheckIsDue = True
        Exit Function
    End If
    CheckIsDue = (Now < lastCheck) Or (DateDiff("h", lastCheck, Now) >= CHECK_INTERVAL_HOURS)
End Function

Private Function ParseStamp(ByVal stamp As String) As Date
    If Len(stamp) <> 14 Or stamp Like "*[!0-9]*" Then Exit Function
    On Error GoTo InvalidStamp
    ParseStamp = DateSerial(CInt(Left$(stamp, 4)), CInt(Mid$(stamp, 5, 2)), CInt(Mid$(stamp, 7, 2))) _
        + TimeSerial(CInt(Mid$(stamp, 9, 2)), CInt(Mid$(stamp, 11, 2)), CInt(Mid$(stamp, 13, 2)))
    Exit Function
InvalidStamp:
    ParseStamp = 0
End Function

' Manifest is key=value lines: version, file, sha256.
Private Function ParseManifest(ByVal body As String) As Boolean
    Dim entry As Variant
    Dim pos As Long
    Dim key As String
    Dim value As String
    Dim ver As String
    Dim fileName As String
    Dim sha As String

    For Each entry In Split(Replace(body, vbCr, ""), vbLf)
        pos = InStr(entry, "=")
        If pos > 1 Then
            key = LCase$(Trim$(Left$(entry, pos - 1)))
            value = Trim$(Mid$(entry, pos + 1))
            Select Case key
                Case "version": ver = value
                Case "file": fileName = value
                Case "sha256": sha = LCase$(value)
            End Select
        End If
    Next

    If Not IsValidVersion(ver) Then Exit Function
    If Not IsValidAsset(fileName, sha, ver) Then Exit Function
    gLatestVersion = ver
    gLatestFile = fileName
    gLatestSha = sha
    ParseManifest = True
End Function

' Announce-only fallback: takes the newest release tag from the Atom feed.
Private Function ParseFeed(ByVal body As String) As Boolean
    Dim marker As String
    Dim start As Long
    Dim finish As Long
    Dim ver As String

    marker = "/releases/tag/v"
    start = InStr(body, marker)
    If start = 0 Then Exit Function
    start = start + Len(marker)
    finish = InStr(start, body, """")
    If finish = 0 Then Exit Function
    ver = Mid$(body, start, finish - start)
    If Not IsValidVersion(ver) Then Exit Function
    ' Keep an installable cached release rather than downgrading it to a manual-download one.
    If Len(gLatestFile) > 0 And CompareVersions(ver, gLatestVersion) <= 0 Then
        ParseFeed = True
        Exit Function
    End If
    gLatestVersion = ver
    gLatestFile = ""
    gLatestSha = ""
    ParseFeed = True
End Function

Private Sub SaveCachedUpdate()
    SaveSetting SETTINGS_APP, SETTINGS_SECTION, "LatestVersion", gLatestVersion
    SaveSetting SETTINGS_APP, SETTINGS_SECTION, "LatestFile", gLatestFile
    SaveSetting SETTINGS_APP, SETTINGS_SECTION, "LatestSha", gLatestSha
End Sub

Private Sub LoadCachedUpdate()
    Dim ver As String
    Dim fileName As String
    Dim sha As String

    gSnoozedVersion = GetSetting(SETTINGS_APP, SETTINGS_SECTION, "SnoozedVersion", "")
    gSnoozedUntil = ParseStamp(GetSetting(SETTINGS_APP, SETTINGS_SECTION, "SnoozedUntil", ""))
    ver = GetSetting(SETTINGS_APP, SETTINGS_SECTION, "LatestVersion", "")
    fileName = GetSetting(SETTINGS_APP, SETTINGS_SECTION, "LatestFile", "")
    sha = GetSetting(SETTINGS_APP, SETTINGS_SECTION, "LatestSha", "")
    If Not IsValidVersion(ver) Then Exit Sub
    If CompareVersions(ver, APP_VERSION) <= 0 Then
        ClearCachedUpdate
        Exit Sub
    End If
    If Len(fileName) > 0 And Not IsValidAsset(fileName, sha, ver) Then
        fileName = ""
        sha = ""
    End If
    gLatestVersion = ver
    gLatestFile = fileName
    gLatestSha = sha
    gUpdateAvailable = True
End Sub

' DeleteSetting raises when a key is missing.
Private Sub ClearCachedUpdate()
    On Error Resume Next
    DeleteSetting SETTINGS_APP, SETTINGS_SECTION, "LatestVersion"
    DeleteSetting SETTINGS_APP, SETTINGS_SECTION, "LatestFile"
    DeleteSetting SETTINGS_APP, SETTINGS_SECTION, "LatestSha"
End Sub

Private Function IsSnoozed() As Boolean
    IsSnoozed = (gSnoozedVersion = gLatestVersion And Len(gLatestVersion) > 0 And Now < gSnoozedUntil)
End Function

' ---- Install ----

Private Sub RunInstall()
    Dim reason As String
    Dim data() As Byte
    Dim target As String
    Dim temp As String
    Dim ver As String
    Dim fileName As String
    Dim sha As String

    ProgressBegin "Updating All-in-one..."
    On Error GoTo Failed
    If Len(gLatestFile) = 0 Then
        ProgressStep 0.1, "Checking release..."
        reason = FetchManifest(gLatestVersion)
        If Len(reason) > 0 Then GoTo Failed
    End If
    ' A background check can replace the globals while the progress dialog pumps events.
    ver = gLatestVersion
    fileName = gLatestFile
    sha = gLatestSha

    ProgressStep 0.25, "Downloading v" & ver & "..."
    reason = DownloadBytes(REPO_URL & "/releases/download/v" & ver & "/" & fileName, data)
    If Len(reason) > 0 Then GoTo Failed

    ProgressStep 0.7, "Verifying..."
    If UBound(data) < 3 Or data(0) <> &H50 Or data(1) <> &H4B Then
        reason = "The downloaded file is not a valid add-in."
        GoTo Failed
    End If
    If Sha256Hex(data) <> sha Then
        reason = "The downloaded file failed its integrity check."
        GoTo Failed
    End If

    ProgressStep 0.85, "Installing..."
    target = InstallFolder() & LocalFileName(ver)
    temp = target & ".tmp"
    If Not WriteBinary(temp, data) Then
        reason = "Could not write to the install folder:" & vbCrLf & InstallFolder()
        GoTo Failed
    End If
    If Len(Dir$(target)) > 0 Then Kill target
    Name temp As target
    temp = ""

    If Not RegisterUpdate(target) Then
        On Error Resume Next
        Kill target
        reason = "PowerPoint did not accept the new add-in; your current version is unchanged."
        GoTo Failed
    End If

    gUpdateAvailable = False
    RefreshRibbon
    ProgressStep 1, "Done."
    ProgressFinish "v" & ver & " is ready. Restart PowerPoint to finish the update.", "", ""
    Exit Sub

Failed:
    If Len(reason) = 0 Then reason = "Unexpected error: " & Err.Description
    On Error Resume Next
    If Len(temp) > 0 Then Kill temp
    ProgressFinish "The update could not be installed." & vbCrLf & reason & vbCrLf & vbCrLf & _
        "You can download it manually instead.", "Open download page", REPO_URL & "/releases/latest"
End Sub

' Used when only the Atom feed announced the release; returns an error message, or "" on success.
Private Function FetchManifest(ByVal ver As String) As String
    Dim bytes() As Byte
    Dim reason As String

    reason = DownloadBytes(REPO_URL & "/releases/download/v" & ver & "/update.txt", bytes)
    If Len(reason) > 0 Then
        FetchManifest = reason
        Exit Function
    End If
    If Not ParseManifest(StrConv(bytes, vbUnicode)) Then
        FetchManifest = "The release has no installable file."
        Exit Function
    End If
    SaveCachedUpdate
End Function

' Returns an error message, or "" on success. WinHTTP first; urlmon when WinHTTP cannot reach GitHub.
Private Function DownloadBytes(ByVal url As String, ByRef data() As Byte) As String
    Dim retry As Boolean
    Dim fallback As String

    DownloadBytes = DownloadWinHttp(url, data, retry)
    If Not retry Then Exit Function

    ProgressStep gStepFraction, "Retrying download..."
    fallback = DownloadUrlmon(url, data)
    If Len(fallback) = 0 Then
        DownloadBytes = ""
    Else
        DownloadBytes = DownloadBytes & vbCrLf & fallback
    End If
End Function

' Sets retry when the failure may be specific to WinHTTP (no connection, proxy authentication).
Private Function DownloadWinHttp(ByVal url As String, ByRef data() As Byte, ByRef retry As Boolean) As String
    Dim http As Object
    Dim body As Variant

    On Error GoTo NetError
    Set http = CreateWinHttp()
    http.SetTimeouts 15000, 15000, 30000, DOWNLOAD_TIMEOUT_SECONDS * 1000
    http.Open "GET", url, False
    http.SetRequestHeader "User-Agent", "All-in-one/" & APP_VERSION
    http.Send
    Select Case http.Status
        Case 200
        Case 407
            retry = True
            DownloadWinHttp = "The proxy requires authentication."
            Exit Function
        Case Else
            DownloadWinHttp = "GitHub answered with HTTP " & http.Status & "."
            Exit Function
    End Select
    body = http.ResponseBody
    If Not IsArray(body) Then
        DownloadWinHttp = "The download was empty."
        Exit Function
    End If
    If UBound(body) - LBound(body) + 1 > MAX_DOWNLOAD_BYTES Then
        DownloadWinHttp = "The download is larger than expected."
        Exit Function
    End If
    data = body
    Exit Function
NetError:
    retry = True
    DownloadWinHttp = "Could not reach GitHub: " & Err.Description
End Function

' URLMON uses the user's WinINet proxy settings and follows redirects across hosts.
Private Function DownloadUrlmon(ByVal url As String, ByRef data() As Byte) As String
    Dim temp As String
    Dim hr As Long
    Dim size As Long
    Dim f As Integer

    temp = Environ$("TEMP") & "\All-in-one-download-" & Format$(Now, "yyyymmddhhnnss") & ".tmp"
    On Error GoTo Failed
    DeleteUrlCacheEntryW StrPtr(url)
    hr = URLDownloadToFileW(0, StrPtr(url), StrPtr(temp), 0, 0)
    If hr <> 0 Then
        DownloadUrlmon = "The fallback download failed (0x" & Hex$(hr) & ")."
        GoTo Cleanup
    End If
    size = FileLen(temp)
    If size = 0 Then
        DownloadUrlmon = "The download was empty."
        GoTo Cleanup
    End If
    If size > MAX_DOWNLOAD_BYTES Then
        DownloadUrlmon = "The download is larger than expected."
        GoTo Cleanup
    End If
    ReDim data(0 To size - 1)
    f = FreeFile
    Open temp For Binary Access Read As #f
    Get #f, , data
    Close #f
    f = 0
Cleanup:
    On Error Resume Next
    If f <> 0 Then Close #f
    Kill temp
    Exit Function
Failed:
    DownloadUrlmon = "The fallback download failed: " & Err.Description
    Resume Cleanup
End Function

Private Function Sha256Hex(ByRef data() As Byte) As String
    Dim hAlg As LongPtr
    Dim digest(0 To 31) As Byte
    Dim i As Long

    If BCryptOpenAlgorithmProvider(hAlg, StrPtr("SHA256"), 0, 0) <> 0 Then Exit Function
    If BCryptHash(hAlg, 0, 0, VarPtr(data(LBound(data))), UBound(data) - LBound(data) + 1, VarPtr(digest(0)), 32) = 0 Then
        For i = 0 To 31
            Sha256Hex = Sha256Hex & LCase$(Right$("0" & Hex$(digest(i)), 2))
        Next
    End If
    BCryptCloseAlgorithmProvider hAlg, 0
End Function

' Returns True only if the complete file was written.
Private Function WriteBinary(ByVal path As String, ByRef data() As Byte) As Boolean
    Dim f As Integer

    On Error GoTo Failed
    If Len(Dir$(path)) > 0 Then Kill path
    f = FreeFile
    Open path For Binary Access Write As #f
    Put #f, , data
    Close #f
    f = 0
    WriteBinary = (FileLen(path) = UBound(data) - LBound(data) + 1)
    Exit Function
Failed:
    On Error Resume Next
    If f <> 0 Then Close #f
End Function

' Registers the new file to auto-load next start without loading it now, and disables older copies.
' All-or-nothing: on failure the previous AutoLoad states are restored so some version still loads.
Private Function RegisterUpdate(ByVal path As String) As Boolean
    Dim added As AddIn
    Dim other As AddIn
    Dim paths As New Collection
    Dim states As New Collection
    Dim ok As Boolean

    On Error GoTo Failed
    For Each other In Application.AddIns
        If other.Name Like "All-in-one*" Then
            paths.Add other.FullName
            states.Add other.AutoLoad
        End If
    Next

    Set added = Application.AddIns.Add(path)
    added.AutoLoad = msoTrue
    For Each other In Application.AddIns
        If other.Name Like "All-in-one*" And StrComp(other.FullName, path, vbTextCompare) <> 0 Then other.AutoLoad = msoFalse
    Next

    ok = (added.AutoLoad = msoTrue)
    For Each other In Application.AddIns
        If other.Name Like "All-in-one*" And StrComp(other.FullName, path, vbTextCompare) <> 0 Then
            If other.AutoLoad <> msoFalse Then ok = False
        End If
    Next
    If ok Then
        RegisterUpdate = True
        Exit Function
    End If

Failed:
    RollbackRegistration path, paths, states
End Function

Private Sub RollbackRegistration(ByVal path As String, ByVal paths As Collection, ByVal states As Collection)
    Dim other As AddIn
    Dim i As Long

    On Error Resume Next
    For i = 1 To paths.Count
        For Each other In Application.AddIns
            If StrComp(other.FullName, paths(i), vbTextCompare) = 0 Then other.AutoLoad = states(i)
        Next
    Next
    For i = Application.AddIns.Count To 1 Step -1
        If StrComp(Application.AddIns(i).FullName, path, vbTextCompare) = 0 Then Application.AddIns.Remove i
    Next
End Sub

' Folder of the running add-in, so a custom install location is respected.
Private Function InstallFolder() As String
    Dim a As AddIn

    On Error Resume Next
    For Each a In Application.AddIns
        If a.Name Like "All-in-one*" And a.Loaded Then
            InstallFolder = a.path
            Exit For
        End If
    Next
    If Len(InstallFolder) = 0 Then InstallFolder = Environ$("APPDATA") & "\Microsoft\AddIns"
    If Right$(InstallFolder, 1) <> "\" Then InstallFolder = InstallFolder & "\"
End Function

' Removes older versioned files and entries whose file is gone, and disables older entries that
' could not be deleted (locked) so two versions never load together; failures are ignored.
Public Sub CleanupOldVersions()
    Dim folder As String
    Dim fileName As String
    Dim ver As String
    Dim full As String
    Dim stale As New Collection
    Dim item As Variant
    Dim i As Long

    On Error Resume Next
    folder = InstallFolder()
    fileName = Dir$(folder & FILE_PREFIX & "*" & FILE_SUFFIX)
    Do While Len(fileName) > 0
        ver = VersionFromFileName(fileName)
        If Len(ver) > 0 Then
            If CompareVersions(ver, APP_VERSION) < 0 Then stale.Add fileName
        End If
        fileName = Dir$
    Loop
    For Each item In stale
        Kill folder & item
    Next

    For i = Application.AddIns.Count To 1 Step -1
        If Application.AddIns(i).Name Like "All-in-one*" Then
            full = Application.AddIns(i).FullName
            If Len(full) > 0 Then
                If Len(Dir$(full)) = 0 Then
                    Application.AddIns.Remove i
                Else
                    ver = VersionFromFileName(Mid$(full, InStrRev(full, "\") + 1))
                    If Len(ver) > 0 Then
                        If CompareVersions(ver, APP_VERSION) < 0 Then Application.AddIns(i).AutoLoad = msoFalse
                    End If
                End If
            End If
        End If
    Next
End Sub

' ---- Helpers ----

' The progress dialog is optional: if the form is unavailable the install still runs and the result is a plain message box.
Private Sub ProgressBegin(ByVal message As String)
    On Error Resume Next
    gStepFraction = 0
    UpdateDialog.BeginProgress MSG_TITLE, message
    gProgress = (Err.Number = 0)
End Sub

Private Sub ProgressStep(ByVal fraction As Double, ByVal message As String)
    gStepFraction = fraction
    If Not gProgress Then Exit Sub
    On Error Resume Next
    UpdateDialog.SetProgress fraction, message
End Sub

' Turns the progress window into the result dialog and waits for Close.
Private Sub ProgressFinish(ByVal message As String, ByVal linkText As String, ByVal linkUrl As String)
    Dim text As String

    If gProgress Then
        gProgress = False
        On Error GoTo Fallback
        UpdateDialog.Finish message, linkText, linkUrl
        Exit Sub
    End If
Fallback:
    On Error Resume Next
    Unload UpdateDialog
    text = message
    If Len(linkText) > 0 Then text = text & vbCrLf & vbCrLf & linkText & ": " & linkUrl
    MsgBox text, vbInformation, MSG_TITLE
End Sub

' Only https links built from this module's constants are ever opened.
Public Sub OpenUrl(ByVal url As String)
    If Left$(url, 8) <> "https://" Then Exit Sub
    On Error Resume Next
    If ShellExecute(0, StrPtr("open"), StrPtr(url), 0, 0, 1) > 32 Then Exit Sub
    Err.Clear
    ActivePresentation.FollowHyperlink url
    If Err.Number <> 0 Then MsgBox "Open this address in your browser:" & vbCrLf & url, vbInformation, MSG_TITLE
End Sub

' AddIns.Add rejects names with extra dots, so the saved copy uses dashes (All-in-one-v1-2-3.ppam).
Private Function LocalFileName(ByVal ver As String) As String
    LocalFileName = FILE_PREFIX & Replace(ver, ".", "-") & FILE_SUFFIX
End Function

' Returns the version in a versioned add-in file name (dots or dashes), or "" if it is not one.
Private Function VersionFromFileName(ByVal fileName As String) As String
    Dim ver As String

    If Len(fileName) <= Len(FILE_PREFIX) + Len(FILE_SUFFIX) Then Exit Function
    If StrComp(Left$(fileName, Len(FILE_PREFIX)), FILE_PREFIX, vbTextCompare) <> 0 Then Exit Function
    If StrComp(Right$(fileName, Len(FILE_SUFFIX)), FILE_SUFFIX, vbTextCompare) <> 0 Then Exit Function
    ver = Replace(Mid$(fileName, Len(FILE_PREFIX) + 1, Len(fileName) - Len(FILE_PREFIX) - Len(FILE_SUFFIX)), "-", ".")
    If IsValidVersion(ver) Then VersionFromFileName = ver
End Function

Private Function IsValidVersion(ByVal ver As String) As Boolean
    Dim parts() As String
    Dim i As Long

    parts = Split(ver, ".")
    If UBound(parts) <> 2 Then Exit Function
    For i = 0 To 2
        If Len(parts(i)) < 1 Or Len(parts(i)) > 6 Or parts(i) Like "*[!0-9]*" Then Exit Function
    Next
    IsValidVersion = True
End Function

' The asset name and hash come from a remote file, so they are checked before being used in a path or URL.
Private Function IsValidAsset(ByVal fileName As String, ByVal sha As String, ByVal ver As String) As Boolean
    If fileName <> FILE_PREFIX & ver & FILE_SUFFIX Then Exit Function
    If Len(sha) <> 64 Or sha Like "*[!0-9a-f]*" Then Exit Function
    IsValidAsset = True
End Function

Private Function CompareVersions(ByVal a As String, ByVal b As String) As Long
    Dim pa() As String
    Dim pb() As String
    Dim i As Long

    pa = Split(a, ".")
    pb = Split(b, ".")
    For i = 0 To 2
        If CLng(pa(i)) <> CLng(pb(i)) Then
            CompareVersions = IIf(CLng(pa(i)) > CLng(pb(i)), 1, -1)
            Exit Function
        End If
    Next
End Function
