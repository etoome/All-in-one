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

' Changes each adjacent gap by sign * SPACING_STEP while keeping the group centered.
' Sizes are constant, so shifting shape centers by the same delta also changes the
' edge gaps by exactly SPACING_STEP, giving uniform spacing regardless of shape sizes.
Private Sub AdjustSpacing(ByVal horizontal As Boolean, ByVal sign As Integer)
    Dim shapes As ShapeRange
    Dim order() As Long
    Dim centers() As Single
    Dim n As Long, i As Long, j As Long, tmp As Long
    Dim delta As Single, newCenter As Single

    If SelectedShapeCount < 2 Then Exit Sub

    Set shapes = ActiveWindow.Selection.ShapeRange
    n = shapes.Count

    ReDim order(1 To n)
    ReDim centers(1 To n)
    For i = 1 To n
        order(i) = i
        If horizontal Then
            centers(i) = shapes(i).Left + shapes(i).Width / 2
        Else
            centers(i) = shapes(i).Top + shapes(i).Height / 2
        End If
    Next i

    ' Insertion sort shape indices by center position (ascending).
    For i = 2 To n
        tmp = order(i)
        j = i - 1
        Do While j >= 1
            If centers(order(j)) <= centers(tmp) Then Exit Do
            order(j + 1) = order(j)
            j = j - 1
        Loop
        order(j + 1) = tmp
    Next i

    delta = sign * SPACING_STEP

    ' When shrinking, bail out if any adjacent gap would collapse past its neighbor.
    If sign < 0 Then
        For i = 1 To n - 1
            If centers(order(i + 1)) - centers(order(i)) + delta < 0 Then Exit Sub
        Next i
    End If

    ' Shift each shape symmetrically about the group center so the center stays put.
    For i = 1 To n
        newCenter = centers(order(i)) + delta * (i - 1 - (n - 1) / 2)
        If horizontal Then
            shapes(order(i)).Left = newCenter - shapes(order(i)).Width / 2
        Else
            shapes(order(i)).Top = newCenter - shapes(order(i)).Height / 2
        End If
    Next i
End Sub
