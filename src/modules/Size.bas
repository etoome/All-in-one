Attribute VB_Name = "Size"
Option Explicit

' Ribbon onAction callback: resize all selected shapes to match the first-selected shape's height.
Sub ObjectsSameHeight(control As IRibbonControl)
    Dim shapes As ShapeRange
    Dim referenceHeight As Single
    Dim i As Long

    If SelectedShapeCount < 2 Then Exit Sub

    Set shapes = ActiveWindow.Selection.ShapeRange
    referenceHeight = shapes(1).Height

    For i = 2 To shapes.Count
        shapes(i).Height = referenceHeight
    Next i
End Sub

' Ribbon onAction callback: resize all selected shapes to match the first-selected shape's width.
Sub ObjectsSameWidth(control As IRibbonControl)
    Dim shapes As ShapeRange
    Dim referenceWidth As Single
    Dim i As Long

    If SelectedShapeCount < 2 Then Exit Sub

    Set shapes = ActiveWindow.Selection.ShapeRange
    referenceWidth = shapes(1).Width

    For i = 2 To shapes.Count
        shapes(i).Width = referenceWidth
    Next i
End Sub

' Ribbon onAction callback: resize all selected shapes to match the first-selected shape's width and height.
Sub ObjectsSameSize(control As IRibbonControl)
    Dim shapes As ShapeRange
    Dim referenceWidth As Single
    Dim referenceHeight As Single
    Dim wasLocked As MsoTriState
    Dim i As Long

    If SelectedShapeCount < 2 Then Exit Sub

    Set shapes = ActiveWindow.Selection.ShapeRange
    referenceWidth = shapes(1).Width
    referenceHeight = shapes(1).Height

    For i = 2 To shapes.Count
        wasLocked = shapes(i).LockAspectRatio
        shapes(i).LockAspectRatio = msoFalse ' otherwise setting width rescales height
        shapes(i).Width = referenceWidth
        shapes(i).Height = referenceHeight
        shapes(i).LockAspectRatio = wasLocked
    Next i
End Sub

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

