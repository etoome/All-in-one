Attribute VB_Name = "Alignment"
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

' Moves every selected shape except the first onto the first one's edge or center; a lone shape aligns to the slide.
Private Sub AlignToFirstShape(ByVal mode As String)
    Dim shapes As ShapeRange
    Dim refLeft As Single, refTop As Single, refWidth As Single, refHeight As Single
    Dim firstIndex As Long
    Dim i As Long

    If SelectedShapeCount < 1 Then Exit Sub

    Set shapes = ActiveWindow.Selection.ShapeRange

    If shapes.Count = 1 Then
        refLeft = 0
        refTop = 0
        refWidth = ActivePresentation.PageSetup.SlideWidth
        refHeight = ActivePresentation.PageSetup.SlideHeight
        firstIndex = 1
    Else
        refLeft = shapes(1).Left
        refTop = shapes(1).Top
        refWidth = shapes(1).Width
        refHeight = shapes(1).Height
        firstIndex = 2
    End If

    For i = firstIndex To shapes.Count
        Select Case mode
            Case "top": shapes(i).Top = refTop
            Case "middle": shapes(i).Top = refTop + refHeight / 2 - shapes(i).Height / 2
            Case "bottom": shapes(i).Top = refTop + refHeight - shapes(i).Height
            Case "left": shapes(i).Left = refLeft
            Case "center": shapes(i).Left = refLeft + refWidth / 2 - shapes(i).Width / 2
            Case "right": shapes(i).Left = refLeft + refWidth - shapes(i).Width
        End Select
    Next i
End Sub