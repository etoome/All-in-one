Attribute VB_Name = "Size"
Option Explicit

' Ribbon onAction callback: locks width-height proportion for all selected shapes.
Sub LockAspectRatio(control As IRibbonControl)
    SetAspectRatioLock True
End Sub

' Ribbon onAction callback: unlocks width-height proportion for all selected shapes.
Sub UnlockAspectRatio(control As IRibbonControl)
    SetAspectRatioLock False
End Sub

Private Sub SetAspectRatioLock(locked As Boolean)
    Dim shapes As ShapeRange
    Dim i As Long

    If SelectedShapeCount < 1 Then Exit Sub

    Set shapes = ActiveWindow.Selection.ShapeRange
    For i = 1 To shapes.Count
        shapes(i).LockAspectRatio = IIf(locked, msoTrue, msoFalse)
    Next i

    RefreshRibbon ' the locked/unlocked button pair swaps via getVisible, not selection change
End Sub

' Ribbon getVisible callback: shows the "locked" button when the first-selected shape is locked.
Sub GetLockAspectRatioVisible(control As IRibbonControl, ByRef returnedVal)
    returnedVal = IsAspectRatioLocked()
End Sub

' Ribbon getVisible callback: shows the "unlocked" button when the first-selected shape is not locked.
Sub GetLockAspectRatioNotVisible(control As IRibbonControl, ByRef returnedVal)
    returnedVal = Not IsAspectRatioLocked()
End Sub

Private Function IsAspectRatioLocked() As Boolean
    If SelectedShapeCount < 1 Then
        IsAspectRatioLocked = False
    Else
        IsAspectRatioLocked = (ActiveWindow.Selection.ShapeRange(1).LockAspectRatio = msoTrue)
    End If
End Function

