Attribute VB_Name = "Aligment"
Option Explicit

' Ribbon onAction callback: align the tops of all selected shapes to the first-selected shape.
Sub AlignObjectsTop(control As IRibbonControl)
    AlignToFirstShape "top"
End Sub

' Ribbon onAction callback: align the vertical centers to the first-selected shape.
Sub AlignObjectsMiddle(control As IRibbonControl)
    AlignToFirstShape "middle"
End Sub

' Ribbon onAction callback: align the bottoms to the first-selected shape.
Sub AlignObjectsBottom(control As IRibbonControl)
    AlignToFirstShape "bottom"
End Sub

' Ribbon onAction callback: align the left edges to the first-selected shape.
Sub AlignObjectsLeft(control As IRibbonControl)
    AlignToFirstShape "left"
End Sub

' Ribbon onAction callback: align the horizontal centers to the first-selected shape.
Sub AlignObjectsCenter(control As IRibbonControl)
    AlignToFirstShape "center"
End Sub

' Ribbon onAction callback: align the right edges to the first-selected shape.
Sub AlignObjectsRight(control As IRibbonControl)
    AlignToFirstShape "right"
End Sub

' Moves every selected shape except the first onto the first one's edge or center.
Private Sub AlignToFirstShape(ByVal mode As String)
    Dim shapes As ShapeRange
    Dim ref As Shape
    Dim i As Long

    If SelectedShapeCount < 2 Then Exit Sub

    Set shapes = ActiveWindow.Selection.ShapeRange
    Set ref = shapes(1)

    For i = 2 To shapes.Count
        Select Case mode
            Case "top": shapes(i).Top = ref.Top
            Case "middle": shapes(i).Top = ref.Top + ref.Height / 2 - shapes(i).Height / 2
            Case "bottom": shapes(i).Top = ref.Top + ref.Height - shapes(i).Height
            Case "left": shapes(i).Left = ref.Left
            Case "center": shapes(i).Left = ref.Left + ref.Width / 2 - shapes(i).Width / 2
            Case "right": shapes(i).Left = ref.Left + ref.Width - shapes(i).Width
        End Select
    Next i
End Sub
