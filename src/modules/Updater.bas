Attribute VB_Name = "Updater"
Option Explicit

' Announces newer GitHub releases; the Update button only opens the download page, nothing is downloaded or installed.

Private Const FEED_URL As String = "https://github.com/etoome/All-in-one/releases.atom"
Private Const CHANGELOG_URL As String = "https://github.com/etoome/All-in-one/blob/main/CHANGELOG.md"
Private Const MSG_TITLE As String = "All-in-one"
Private Const SETTINGS_APP As String = "All-in-one"
Private Const SETTINGS_SECTION As String = "Update"
Private Const CHECK_INTERVAL_HOURS As Long = 24
Private Const SNOOZE_DAYS As Long = 7
Private Const CHECK_TIMEOUT_SECONDS As Long = 15

Private gRequest As Object
Private gDeadline As Date
Private gLatestVersion As String
Private gSnoozedVersion As String
Private gSnoozedUntil As Date
Private gUpdateAvailable As Boolean

' ---- Ribbon callbacks ----

Sub GetUpdateVisible(control As IRibbonControl, ByRef returnedVal)
    returnedVal = gUpdateAvailable And Not IsSnoozed()
End Sub

Sub GetUpdateLabel(control As IRibbonControl, ByRef returnedVal)
    returnedVal = "Update to v" & gLatestVersion
End Sub

Sub OpenUpdatePage(control As IRibbonControl)
    OpenUrl UPDATE_URL
End Sub

Sub OpenChangelog(control As IRibbonControl)
    OpenUrl CHANGELOG_URL
End Sub

Sub RemindMeLater(control As IRibbonControl)
    If Not gUpdateAvailable Then Exit Sub
    gSnoozedVersion = gLatestVersion
    gSnoozedUntil = DateAdd("d", SNOOZE_DAYS, Now)
    SaveSetting SETTINGS_APP, SETTINGS_SECTION, "SnoozedVersion", gSnoozedVersion
    SaveSetting SETTINGS_APP, SETTINGS_SECTION, "SnoozedUntil", Format$(gSnoozedUntil, "yyyymmddhhnnss")
    RefreshRibbon
End Sub

' ---- Check ----

' Shows a cached result immediately, then refreshes it in the background at most once per interval.
Public Sub StartUpdateCheck()
    On Error GoTo Failed
    LoadCachedUpdate
    If Not CheckIsDue() Then Exit Sub
    Set gRequest = CreateHttp()
    If gRequest Is Nothing Then Exit Sub
    gRequest.Open "GET", FEED_URL, True
    gRequest.setRequestHeader "User-Agent", "All-in-one/" & APP_VERSION
    gRequest.Send
    gDeadline = DateAdd("s", CHECK_TIMEOUT_SECONDS, Now)
    Exit Sub
Failed:
    Set gRequest = Nothing
End Sub

' Called from application events (VBA has no timers in PowerPoint); cheap when nothing is pending.
Public Sub PollUpdateCheck()
    If gRequest Is Nothing Then Exit Sub
    Dim body As String

    On Error GoTo Failed
    If gRequest.readyState <> 4 Then
        If Now > gDeadline Then
            gRequest.abort
            Set gRequest = Nothing
        End If
        Exit Sub
    End If

    If gRequest.Status = 200 Then body = gRequest.responseText
    Set gRequest = Nothing
    If Not ParseFeed(body) Then Exit Sub

    SaveSetting SETTINGS_APP, SETTINGS_SECTION, "LastCheck", Format$(Now, "yyyymmddhhnnss")
    SaveSetting SETTINGS_APP, SETTINGS_SECTION, "LatestVersion", gLatestVersion
    gUpdateAvailable = (CompareVersions(gLatestVersion, APP_VERSION) > 0)
    RefreshRibbon
    Exit Sub
Failed:
    Set gRequest = Nothing
End Sub

' XMLHTTP uses WinINet, so it follows the user's proxy settings and credentials.
Private Function CreateHttp() As Object
    On Error Resume Next
    Set CreateHttp = CreateObject("MSXML2.XMLHTTP.6.0")
    If CreateHttp Is Nothing Then Set CreateHttp = CreateObject("MSXML2.XMLHTTP")
    If CreateHttp Is Nothing Then Set CreateHttp = CreateObject("Microsoft.XMLHTTP")
End Function

Private Function CheckIsDue() As Boolean
    Dim lastCheck As Date

    lastCheck = ParseStamp(GetSetting(SETTINGS_APP, SETTINGS_SECTION, "LastCheck", ""))
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

' The newest release tag is the first one in the Atom feed.
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
    gLatestVersion = ver
    ParseFeed = True
End Function

Private Sub LoadCachedUpdate()
    Dim ver As String

    gSnoozedVersion = GetSetting(SETTINGS_APP, SETTINGS_SECTION, "SnoozedVersion", "")
    gSnoozedUntil = ParseStamp(GetSetting(SETTINGS_APP, SETTINGS_SECTION, "SnoozedUntil", ""))
    ver = GetSetting(SETTINGS_APP, SETTINGS_SECTION, "LatestVersion", "")
    If Not IsValidVersion(ver) Then Exit Sub
    If CompareVersions(ver, APP_VERSION) <= 0 Then Exit Sub
    gLatestVersion = ver
    gUpdateAvailable = True
End Sub

Private Function IsSnoozed() As Boolean
    IsSnoozed = (gSnoozedVersion = gLatestVersion And Len(gLatestVersion) > 0 And Now < gSnoozedUntil)
End Function

' ---- Helpers ----

' Only https links built from constants are ever opened.
Private Sub OpenUrl(ByVal url As String)
    If Left$(url, 8) <> "https://" Then Exit Sub
    On Error Resume Next
    ActivePresentation.FollowHyperlink url
    If Err.Number <> 0 Then MsgBox "Open this address in your browser:" & vbCrLf & url, vbInformation, MSG_TITLE
End Sub

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
