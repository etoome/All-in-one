Private WithEvents mLink As MSForms.Label
Private WithEvents mAccept As MSForms.CommandButton
Private WithEvents mClose As MSForms.CommandButton

Private mLinkUrl As String
Private mAccepted As Boolean

Private Const FORM_WIDTH As Single = 360
Private Const MARGIN As Single = 14
Private Const BUTTON_WIDTH As Single = 96
Private Const ACCEPT_WIDTH As Single = 130
Private Const BUTTON_HEIGHT As Single = 24

' Controls are built in code because build.py injects this module's text, not a binary .frx layout.
' Returns True when the accept button is used; an empty acceptText gives a Close-only dialog.
Public Function ShowDialog(ByVal title As String, ByVal message As String, ByVal linkText As String, ByVal linkUrl As String, ByVal acceptText As String) As Boolean
    Dim msg As MSForms.Label
    Dim y As Single

    Me.Caption = title
    Me.Width = Me.Width - Me.InsideWidth + FORM_WIDTH
    mLinkUrl = linkUrl
    mAccepted = False

    Set msg = Me.Controls.Add("Forms.Label.1", "lblMessage")
    With msg
        .Left = MARGIN
        .Top = MARGIN
        .Width = FORM_WIDTH - 2 * MARGIN
        .WordWrap = True
        .Caption = message
        .AutoSize = True
    End With
    y = msg.Top + msg.Height + 10

    If Len(linkText) > 0 Then
        Set mLink = Me.Controls.Add("Forms.Label.1", "lblLink")
        With mLink
            .Left = MARGIN
            .Top = y
            .WordWrap = False
            .Caption = linkText
            .ForeColor = RGB(0, 102, 204)
            .Font.Underline = True
            .ControlTipText = linkUrl
            .AutoSize = True
        End With
        y = y + mLink.Height + 10
    End If
    y = y + 8

    Set mClose = Me.Controls.Add("Forms.CommandButton.1", "btnClose")
    With mClose
        .Width = BUTTON_WIDTH
        .Height = BUTTON_HEIGHT
        .Top = y
        .Left = FORM_WIDTH - MARGIN - BUTTON_WIDTH
        .Caption = IIf(Len(acceptText) > 0, "Later", "Close")
        .Cancel = True
        .Default = (Len(acceptText) = 0)
    End With

    If Len(acceptText) > 0 Then
        Set mAccept = Me.Controls.Add("Forms.CommandButton.1", "btnAccept")
        With mAccept
            .Width = ACCEPT_WIDTH
            .Height = BUTTON_HEIGHT
            .Top = y
            .Left = mClose.Left - 8 - ACCEPT_WIDTH
            .Caption = acceptText
            .Default = True
        End With
    End If

    Me.Height = Me.Height - Me.InsideHeight + y + BUTTON_HEIGHT + MARGIN
    Me.Show vbModal
    ShowDialog = mAccepted
    Unload Me
End Function

Private Sub mLink_Click()
    OpenUrl mLinkUrl
End Sub

Private Sub mAccept_Click()
    mAccepted = True
    Me.Hide
End Sub

Private Sub mClose_Click()
    Me.Hide
End Sub

' Hide instead of unload so ShowDialog can still read the result when the title-bar X is used.
Private Sub UserForm_QueryClose(Cancel As Integer, CloseMode As Integer)
    If CloseMode = vbFormControlMenu Then
        Cancel = True
        Me.Hide
    End If
End Sub
