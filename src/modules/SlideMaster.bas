Attribute VB_Name = "SlideMaster"
Option Explicit

Private gPreviousView As PpViewType

' Ribbon onAction callback: switch to Slide Master view.
Sub OpenSlideMaster(control As IRibbonControl)
    If Not CanUseActiveWindow() Then Exit Sub
    gPreviousView = ActiveWindow.ViewType
    ' ExecuteMso is asynchronous, so the refresh below would still see the old view.
    ActiveWindow.ViewType = ppViewSlideMaster
    RefreshRibbon ' view changes don't raise a selection event, so swap the button pair here
End Sub

' Ribbon onAction callback: leave Slide Master view and return to the view it was opened from.
Sub CloseSlideMaster(control As IRibbonControl)
    If Not CanUseActiveWindow() Then Exit Sub
    If gPreviousView = 0 Or gPreviousView = ppViewSlideMaster Then gPreviousView = ppViewNormal
    ActiveWindow.ViewType = gPreviousView
    gPreviousView = 0
    RefreshRibbon
End Sub

' Ribbon getVisible callback: shows the Close button while in Slide Master view.
Sub GetSlideMasterOpenVisible(control As IRibbonControl, ByRef returnedVal)
    returnedVal = IsSlideMasterView()
End Sub

' Ribbon getVisible callback: shows the Open button and real Layout gallery outside Slide Master view.
Sub GetSlideMasterClosedVisible(control As IRibbonControl, ByRef returnedVal)
    returnedVal = Not IsSlideMasterView()
End Sub

Public Function IsSlideMasterView() As Boolean
    If Not CanUseActiveWindow() Then Exit Function
    IsSlideMasterView = (ActiveWindow.ViewType = ppViewSlideMaster)
End Function
