Attribute VB_Name = "Layout"
Option Explicit

' Position maths on plain numbers; callers read from and write back to shapes.

Public Enum AlignAnchor
    AnchorStart = 1     ' left or top edge
    AnchorCenter
    AnchorEnd           ' right or bottom edge
End Enum

' Start coordinate that puts an item of the given size on the anchor of the reference span.
Public Function AlignedStart(ByVal anchor As AlignAnchor, ByVal refStart As Single, ByVal refSize As Single, ByVal size As Single) As Single
    Select Case anchor
        Case AnchorStart: AlignedStart = refStart
        Case AnchorCenter: AlignedStart = refStart + refSize / 2 - size / 2
        Case AnchorEnd: AlignedStart = refStart + refSize - size
    End Select
End Function

' Moves centers apart (delta > 0) or together (delta < 0) so every adjacent gap changes by delta, keeping the group center fixed.
' Sizes are constant, so shifting centers by the same delta changes the edge gaps by exactly delta whatever the sizes.
' Returns False, leaving spread unset, when shrinking would push a center past its neighbor.
Public Function SpreadCenters(centers() As Single, ByVal delta As Single, ByRef spread() As Single) As Boolean
    Dim order() As Long
    Dim n As Long, i As Long, j As Long, tmp As Long

    n = UBound(centers)
    ReDim order(1 To n)
    For i = 1 To n: order(i) = i: Next i

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

    If delta < 0 Then
        For i = 1 To n - 1
            If centers(order(i + 1)) - centers(order(i)) + delta < 0 Then Exit Function
        Next i
    End If

    ReDim spread(1 To n)
    For i = 1 To n
        spread(order(i)) = centers(order(i)) + delta * (i - 1 - (n - 1) / 2)
    Next i
    SpreadCenters = True
End Function

' Sorts values and groups them into clusters; a value joins the current cluster when within tolerance of its running average.
Public Sub ClusterByPosition(centers() As Double, ByVal tolerance As Double, ByRef clusterIndex() As Long, ByRef clusterCount As Long)
    Dim n As Long, i As Long, j As Long, temp As Long, idx As Long
    Dim order() As Long
    Dim clusterSum As Double, clusterN As Long, clusterAvg As Double

    n = UBound(centers)
    ReDim order(1 To n)
    For i = 1 To n: order(i) = i: Next i

    For i = 2 To n
        j = i
        Do While j > 1
            If centers(order(j - 1)) > centers(order(j)) Then
                temp = order(j - 1): order(j - 1) = order(j): order(j) = temp
                j = j - 1
            Else
                Exit Do
            End If
        Loop
    Next i

    ReDim clusterIndex(1 To n)
    clusterCount = 0
    For i = 1 To n
        idx = order(i)
        If clusterCount = 0 Then
            clusterCount = 1
            clusterSum = centers(idx)
            clusterN = 1
        ElseIf centers(idx) - clusterAvg <= tolerance Then
            clusterSum = clusterSum + centers(idx)
            clusterN = clusterN + 1
        Else
            clusterCount = clusterCount + 1
            clusterSum = centers(idx)
            clusterN = 1
        End If
        clusterAvg = clusterSum / clusterN
        clusterIndex(idx) = clusterCount
    Next i
End Sub
