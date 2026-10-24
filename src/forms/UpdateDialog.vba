Private WithEvents mLink As MSForms.Label
Private WithEvents mClose As MSForms.CommandButton

Private mMessage As MSForms.Label
Private mTrack As MSForms.Label
Private mFill As MSForms.Label
Private mLinkUrl As String
Private mBusy As Boolean

Private Const FORM_WIDTH As Single = 360
Private Const MARGIN As Single = 14
Private Const BUTTON_WIDTH As Single = 96
Private Const BUTTON_HEIGHT As Single = 24
Private Const BAR_HEIGHT As Single = 10

' Controls are built in code because build.py injects this module's text, not a binary .frx layout.
' Shows the form modeless with a progress bar; Finish turns the same window into the result dialog.
Public Sub BeginProgress(ByVal title As String, ByVal message As String)
    Me.Caption = title
    Me.Width = Me.Width - Me.InsideWidth + FORM_WIDTH
    mBusy = True

    Set mMessage = Me.Controls.Add("Forms.Label.1", "lblMessage")
    With mMessage
        .Left = MARGIN
        .Width = FORM_WIDTH - 2 * MARGIN
        .WordWrap = True
        .Caption = message
        .AutoSize = True
    End With

    Set mTrack = Me.Controls.Add("Forms.Label.1", "lblTrack")
    With mTrack
        .Left = MARGIN
        .Width = FORM_WIDTH - 2 * MARGIN
        .Height = BAR_HEIGHT
        .BackColor = RGB(220, 220, 220)
        .BorderStyle = fmBorderStyleNone
    End With
    Set mFill = Me.Controls.Add("Forms.Label.1", "lblFill")
    With mFill
        .Left = MARGIN
        .Width = 0
        .Height = BAR_HEIGHT
        .BackColor = RGB(0, 102, 204)
        .BorderStyle = fmBorderStyleNone
    End With

    Layout
    Me.Show vbModeless
    Me.Repaint
    DoEvents
End Sub

Public Sub SetProgress(ByVal fraction As Double, ByVal message As String)
    If fraction < 0 Then fraction = 0
    If fraction > 1 Then fraction = 1
    mMessage.Caption = message
    mFill.Width = mTrack.Width * fraction
    Layout
    Me.Repaint
    DoEvents
End Sub

' Replaces the bar with the final message and a Close button, then waits for it.
Public Sub Finish(ByVal message As String, ByVal linkText As String, ByVal linkUrl As String)
    mBusy = False
    Me.Controls.Remove "lblFill"
    Me.Controls.Remove "lblTrack"
    Set mFill = Nothing
    Set mTrack = Nothing
    mMessage.Caption = message
    mLinkUrl = linkUrl

    If Len(linkText) > 0 Then
        Set mLink = Me.Controls.Add("Forms.Label.1", "lblLink")
        With mLink
            .Left = MARGIN
            .WordWrap = False
            .Caption = linkText
            .ForeColor = RGB(0, 102, 204)
            .Font.Underline = True
            .ControlTipText = linkUrl
            .AutoSize = True
        End With
    End If

    Set mClose = Me.Controls.Add("Forms.CommandButton.1", "btnClose")
    With mClose
        .Width = BUTTON_WIDTH
        .Height = BUTTON_HEIGHT
        .Left = FORM_WIDTH - MARGIN - BUTTON_WIDTH
        .Caption = "Close"
        .Cancel = True
        .Default = True
    End With

    Layout
    Me.Hide
    Me.Show vbModal
    Unload Me
End Sub

Private Sub Layout()
    Dim y As Single

    y = MARGIN
    mMessage.Width = FORM_WIDTH - 2 * MARGIN
    mMessage.Top = y
    y = y + mMessage.Height + 10
    If Not mTrack Is Nothing Then
        mTrack.Top = y
        mFill.Top = y
        y = y + BAR_HEIGHT + 10
    End If
    If Not mLink Is Nothing Then
        mLink.Top = y
        y = y + mLink.Height + 10
    End If
    If Not mClose Is Nothing Then
        y = y + 8
        mClose.Top = y
        y = y + BUTTON_HEIGHT
    End If
    Me.Height = Me.Height - Me.InsideHeight + y + MARGIN
End Sub

Private Sub mLink_Click()
    OpenUrl mLinkUrl
End Sub

Private Sub mClose_Click()
    Me.Hide
End Sub

' The install cannot be interrupted, so the X is ignored until Finish; afterwards it hides rather than unloads.
Private Sub UserForm_QueryClose(Cancel As Integer, CloseMode As Integer)
    If CloseMode = vbFormControlMenu Then
        Cancel = True
        If Not mBusy Then Me.Hide
    End If
End Sub
