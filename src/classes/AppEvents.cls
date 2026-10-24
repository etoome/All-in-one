VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "AppEvents"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private WithEvents App As Application
Attribute App.VB_VarHelpID = -1

Private Sub Class_Initialize()
    Set App = Application
End Sub

' Fires on every selection change; re-evaluates ribbon getEnabled callbacks.
Private Sub App_WindowSelectionChange(ByVal Sel As Selection)
    PollUpdateCheck
    RefreshRibbon
    ' Counters PowerPoint auto-switching to the contextual Shape Format tab.
    If Sel.Type = ppSelectionShapes Or Sel.Type = ppSelectionText Then ActivateAllInOneTab
End Sub

' Re-select the All-in-one tab whenever a window is activated or a presentation opens.
Private Sub App_WindowActivate(ByVal Pres As Presentation, ByVal Wn As DocumentWindow)
    PollUpdateCheck
    ActivateAllInOneTab
End Sub

Private Sub App_AfterNewPresentation(ByVal Pres As Presentation)
    ActivateAllInOneTab
End Sub

Private Sub App_AfterPresentationOpen(ByVal Pres As Presentation)
    ActivateAllInOneTab
End Sub
