Attribute VB_Name = "SwitchPosition"
Option Explicit

' Ribbon onAction callback: swap the top-left positions of exactly two selected shapes.
Sub SwitchObjectPosition(control As IRibbonControl)
    Dim shapes As ShapeRange
    Dim swapLeft As Single
    Dim swapTop As Single

    If SelectedShapeCount <> 2 Then Exit Sub

    Set shapes = ActiveWindow.Selection.ShapeRange

    swapLeft = shapes(1).Left
    swapTop = shapes(1).Top

    shapes(1).Left = shapes(2).Left
    shapes(1).Top = shapes(2).Top

    shapes(2).Left = swapLeft
    shapes(2).Top = swapTop
End Sub
