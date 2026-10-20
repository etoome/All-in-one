Attribute VB_Name = "Helpers"
Option Explicit

' Ribbon getEnabled callback: enabled only when 2+ shapes are selected.
Sub EnableWhenMultipleShapesSelected(control As IRibbonControl, ByRef returnedVal)
    returnedVal = SelectedShapeCount >= 2
End Sub

' Ribbon getEnabled callback: enabled only when exactly 2 shapes are selected.
Sub EnableWhenTwoShapesSelected(control As IRibbonControl, ByRef returnedVal)
    returnedVal = SelectedShapeCount = 2
End Sub

' Ribbon getEnabled callback: enabled only when exactly 1 shape is selected.
Sub EnableWhenOneShapeSelected(control As IRibbonControl, ByRef returnedVal)
    Dim selectedShapes As ShapeRange

    Set selectedShapes = SelectedShapeRange()
    If selectedShapes Is Nothing Then Exit Sub
    returnedVal = (selectedShapes.Count = 1)
End Sub

' Ribbon getEnabled callback: enabled when at least one shape is selected.
Sub EnableWhenShapeSelected(control As IRibbonControl, ByRef returnedVal)
    returnedVal = SelectedShapeCount >= 1
End Sub

' Ribbon getEnabled callback: enabled when editing text or a shape is selected.
Sub EnableWhenTextSelected(control As IRibbonControl, ByRef returnedVal)
    If Not CanUseActiveWindow() Then
        returnedVal = False
        Exit Sub
    End If
    returnedVal = (ActiveWindow.Selection.Type = ppSelectionText) Or SelectedShapeCount >= 1
End Sub

' Ribbon getEnabled callback: enabled when exactly 1 shape is selected and it is a table.
Sub EnableWhenTableSelected(control As IRibbonControl, ByRef returnedVal)
    If SelectedShapeCount <> 1 Then Exit Sub
    returnedVal = ActiveWindow.Selection.ShapeRange(1).HasTable = msoTrue
End Sub

' Ribbon getEnabled callback: enabled when a table is selected or the cursor or cell selection is inside one.
Sub EnableWhenTableActive(control As IRibbonControl, ByRef returnedVal)
    returnedVal = IsTableActive()
End Sub

' Cell and cursor selections report ppSelectionText, so ShapeRange is checked for both selection types.
Function IsTableActive() As Boolean
    If Not CanUseActiveWindow() Then Exit Function
    On Error GoTo Fail
    With ActiveWindow.Selection
        If .Type = ppSelectionShapes Or .Type = ppSelectionText Then
            If .ShapeRange.Count = 1 Then IsTableActive = (.ShapeRange(1).HasTable = msoTrue)
        End If
    End With
    Exit Function
Fail:
    IsTableActive = False
End Function

' Ribbon getEnabled callback: enabled when 2+ plain (non-table, non-group) shapes are selected.
Sub EnableWhenShapeGridSelected(control As IRibbonControl, ByRef returnedVal)
    Dim shapes As ShapeRange
    Dim i As Long

    If SelectedShapeCount < 2 Then Exit Sub

    Set shapes = ActiveWindow.Selection.ShapeRange
    For i = 1 To shapes.Count
        If shapes(i).HasTable = msoTrue Or shapes(i).Type = msoGroup Then Exit Sub
    Next i
    returnedVal = True
End Sub

' False when no editable window exists or a slideshow is running (ActiveWindow raises then).
Function CanUseActiveWindow() As Boolean
    On Error GoTo Fail
    If Application.Windows.Count = 0 Then Exit Function
    If Application.SlideShowWindows.Count > 0 Then Exit Function
    CanUseActiveWindow = True
    Exit Function
Fail:
    CanUseActiveWindow = False
End Function

' Selection.ShapeRange returns the whole group when a shape inside it is selected; ChildShapeRange returns the inner shapes.
Function SelectedShapeRange() As ShapeRange
    If Not CanUseActiveWindow() Then Exit Function
    With ActiveWindow.Selection
        If .Type <> ppSelectionShapes Then Exit Function
        If .HasChildShapeRange Then
            Set SelectedShapeRange = .ChildShapeRange
        Else
            Set SelectedShapeRange = .ShapeRange
        End If
    End With
End Function

Function SelectedShapeCount() As Long
    If Not CanUseActiveWindow() Then Exit Function
    With ActiveWindow.Selection
        If .Type = ppSelectionShapes Then
            SelectedShapeCount = .ShapeRange.Count
        Else
            SelectedShapeCount = 0
        End If
    End With
End Function
