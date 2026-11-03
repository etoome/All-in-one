Attribute VB_Name = "ShapeSelection"
Option Explicit

' What a command needs selected before it can run; the ribbon's enabled state and the command's own guard share it.
Public Enum SelectionRule
    SelectionAny = 1        ' 1+ shapes
    SelectionSingle         ' exactly 1 shape
    SelectionPair           ' exactly 2 shapes
    SelectionMultiple       ' 2+ shapes
    SelectionTable          ' exactly 1 shape, a table
    SelectionShapeGrid      ' 2+ top-level shapes, none a table or group
End Enum

' Returns the shapes a command should act on, or Nothing when the rule is not met.
' Shapes selected inside a group come back as the inner shapes, not the group.
Function SelectedShapes(ByVal rule As SelectionRule) As ShapeRange
    Dim picked As ShapeRange
    Dim insideGroup As Boolean

    If Not CanUseActiveWindow() Then Exit Function
    With ActiveWindow.Selection
        If .Type <> ppSelectionShapes Then Exit Function
        insideGroup = .HasChildShapeRange
        If insideGroup Then
            Set picked = .ChildShapeRange
        Else
            Set picked = .ShapeRange
        End If
    End With

    If RuleAccepts(rule, picked, insideGroup) Then Set SelectedShapes = picked
End Function

Private Function RuleAccepts(ByVal rule As SelectionRule, picked As ShapeRange, ByVal insideGroup As Boolean) As Boolean
    Dim i As Long

    Select Case rule
        Case SelectionAny
            RuleAccepts = (picked.Count >= 1)
        Case SelectionSingle
            RuleAccepts = (picked.Count = 1)
        Case SelectionPair
            RuleAccepts = (picked.Count = 2)
        Case SelectionMultiple
            RuleAccepts = (picked.Count >= 2)
        Case SelectionTable
            RuleAccepts = (picked.Count = 1) And (picked(1).HasTable = msoTrue)
        Case SelectionShapeGrid
            If picked.Count < 2 Or insideGroup Then Exit Function
            For i = 1 To picked.Count
                If picked(i).HasTable = msoTrue Or picked(i).Type = msoGroup Then Exit Function
            Next i
            RuleAccepts = True
    End Select
End Function

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

' ---- Ribbon getEnabled callbacks ----

Sub EnableWhenShapeSelected(control As IRibbonControl, ByRef returnedVal)
    returnedVal = Not SelectedShapes(SelectionAny) Is Nothing
End Sub

Sub EnableWhenOneShapeSelected(control As IRibbonControl, ByRef returnedVal)
    returnedVal = Not SelectedShapes(SelectionSingle) Is Nothing
End Sub

Sub EnableWhenTwoShapesSelected(control As IRibbonControl, ByRef returnedVal)
    returnedVal = Not SelectedShapes(SelectionPair) Is Nothing
End Sub

Sub EnableWhenMultipleShapesSelected(control As IRibbonControl, ByRef returnedVal)
    returnedVal = Not SelectedShapes(SelectionMultiple) Is Nothing
End Sub

Sub EnableWhenTableSelected(control As IRibbonControl, ByRef returnedVal)
    returnedVal = Not SelectedShapes(SelectionTable) Is Nothing
End Sub

Sub EnableWhenShapeGridSelected(control As IRibbonControl, ByRef returnedVal)
    returnedVal = Not SelectedShapes(SelectionShapeGrid) Is Nothing
End Sub

Sub EnableWhenTableActive(control As IRibbonControl, ByRef returnedVal)
    returnedVal = IsTableActive()
End Sub

' Enabled when editing text or a shape is selected.
Sub EnableWhenTextSelected(control As IRibbonControl, ByRef returnedVal)
    If Not CanUseActiveWindow() Then
        returnedVal = False
        Exit Sub
    End If
    returnedVal = (ActiveWindow.Selection.Type = ppSelectionText) Or Not SelectedShapes(SelectionAny) Is Nothing
End Sub
