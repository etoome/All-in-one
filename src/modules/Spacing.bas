Attribute VB_Name = "Spacing"
Option Explicit

' Points added to (or removed from) each gap between adjacent shapes per click (0.1 in).
Private Const SPACING_STEP As Single = 7.2

' Ribbon onAction callback: widen the horizontal gaps between selected shapes.
Sub IncreaseHorizontalSpacing(control As IRibbonControl)
    AdjustSpacing True, 1
End Sub

' Ribbon onAction callback: narrow the horizontal gaps between selected shapes.
Sub DecreaseHorizontalSpacing(control As IRibbonControl)
    AdjustSpacing True, -1
End Sub

' Ribbon onAction callback: widen the vertical gaps between selected shapes.
Sub IncreaseVerticalSpacing(control As IRibbonControl)
    AdjustSpacing False, 1
End Sub

' Ribbon onAction callback: narrow the vertical gaps between selected shapes.
Sub DecreaseVerticalSpacing(control As IRibbonControl)
    AdjustSpacing False, -1
End Sub

' Ribbon onAction callback: distribute the selected shapes evenly along the vertical axis.
Sub DistributeVertically(control As IRibbonControl)
    DistributeShapes msoDistributeVertically
End Sub

' Ribbon onAction callback: distribute the selected shapes evenly along the horizontal axis.
Sub DistributeHorizontally(control As IRibbonControl)
    DistributeShapes msoDistributeHorizontally
End Sub

' The built-in Distribute is disabled for two shapes, so two are spread across the slide instead.
Private Sub DistributeShapes(ByVal direction As MsoDistributeCmd)
    Dim shapes As ShapeRange

    Set shapes = SelectedShapes(SelectionMultiple)
    If shapes Is Nothing Then Exit Sub

    shapes.Distribute direction, IIf(shapes.Count = 2, msoTrue, msoFalse)
End Sub

' Changes each adjacent gap by sign * SPACING_STEP while keeping the group centered.
Private Sub AdjustSpacing(ByVal horizontal As Boolean, ByVal sign As Integer)
    Dim shapes As ShapeRange
    Dim centers() As Single
    Dim spread() As Single
    Dim i As Long

    Set shapes = SelectedShapes(SelectionMultiple)
    If shapes Is Nothing Then Exit Sub

    ReDim centers(1 To shapes.Count)
    For i = 1 To shapes.Count
        If horizontal Then
            centers(i) = shapes(i).Left + shapes(i).Width / 2
        Else
            centers(i) = shapes(i).Top + shapes(i).Height / 2
        End If
    Next i

    If Not SpreadCenters(centers, sign * SPACING_STEP, spread) Then Exit Sub

    For i = 1 To shapes.Count
        If horizontal Then
            shapes(i).Left = spread(i) - shapes(i).Width / 2
        Else
            shapes(i).Top = spread(i) - shapes(i).Height / 2
        End If
    Next i
End Sub
