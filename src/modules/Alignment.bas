Attribute VB_Name = "Alignment"
Option Explicit

' Ribbon onAction callback: align the tops of all selected shapes to the first-selected shape.
Sub AlignObjectsTop(control As IRibbonControl)
    AlignToFirstShape False, AnchorStart
End Sub

' Ribbon onAction callback: align the vertical centers to the first-selected shape.
Sub AlignObjectsMiddle(control As IRibbonControl)
    AlignToFirstShape False, AnchorCenter
End Sub

' Ribbon onAction callback: align the bottoms to the first-selected shape.
Sub AlignObjectsBottom(control As IRibbonControl)
    AlignToFirstShape False, AnchorEnd
End Sub

' Ribbon onAction callback: align the left edges to the first-selected shape.
Sub AlignObjectsLeft(control As IRibbonControl)
    AlignToFirstShape True, AnchorStart
End Sub

' Ribbon onAction callback: align the horizontal centers to the first-selected shape.
Sub AlignObjectsCenter(control As IRibbonControl)
    AlignToFirstShape True, AnchorCenter
End Sub

' Ribbon onAction callback: align the right edges to the first-selected shape.
Sub AlignObjectsRight(control As IRibbonControl)
    AlignToFirstShape True, AnchorEnd
End Sub

' Moves every selected shape except the first onto the first one's edge or center; a lone shape aligns to the slide.
Private Sub AlignToFirstShape(ByVal horizontal As Boolean, ByVal anchor As AlignAnchor)
    Dim shapes As ShapeRange
    Dim refLeft As Single, refTop As Single, refWidth As Single, refHeight As Single
    Dim firstIndex As Long
    Dim i As Long

    Set shapes = SelectedShapes(SelectionAny)
    If shapes Is Nothing Then Exit Sub

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
        If horizontal Then
            shapes(i).Left = AlignedStart(anchor, refLeft, refWidth, shapes(i).Width)
        Else
            shapes(i).Top = AlignedStart(anchor, refTop, refHeight, shapes(i).Height)
        End If
    Next i
End Sub
