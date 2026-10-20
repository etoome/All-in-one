Attribute VB_Name = "TableConversion"
Option Explicit

Private Const MIN_TRACK_SIZE As Double = 1
Private Const MSG_TITLE As String = "All-in-one"

' Ribbon onAction callback: converts a grid of shapes into a table, keeping the gaps between them, and deletes the originals.
Sub ConvertShapesToTable(control As IRibbonControl)
    Dim shapes As ShapeRange
    Dim container As Object
    Dim tableShape As Shape
    Dim tbl As PowerPoint.Table
    Dim n As Long, i As Long, r As Long, c As Long
    Dim centerX() As Double, centerY() As Double
    Dim rowOf() As Long, colOf() As Long
    Dim numRows As Long, numCols As Long
    Dim minWidth As Double, minHeight As Double
    Dim colLeft() As Double, colRight() As Double
    Dim rowTop() As Double, rowBottom() As Double
    Dim colWidth() As Double, rowHeight() As Double
    Dim occupied() As Boolean
    Dim tableLeft As Double, tableTop As Double
    Dim tableWidth As Double, tableHeight As Double
    Dim msg As String

    If Not CanUseActiveWindow() Then Exit Sub
    If SelectedShapeCount < 2 Then Exit Sub

    On Error GoTo Fail
    Set shapes = ActiveWindow.Selection.ShapeRange
    Set container = shapes(1).Parent ' slide, layout or master, so this also works in master view
    n = shapes.Count

    ReDim centerX(1 To n)
    ReDim centerY(1 To n)
    minWidth = shapes(1).Width
    minHeight = shapes(1).Height
    For i = 1 To n
        With shapes(i)
            centerX(i) = .Left + .Width / 2
            centerY(i) = .Top + .Height / 2
            If .Width < minWidth Then minWidth = .Width
            If .Height < minHeight Then minHeight = .Height
        End With
    Next i

    ' Half the smallest shape's dimension as the clustering tolerance keeps ragged edges in the same row/column.
    ClusterByPosition centerY, minHeight / 2, rowOf, numRows
    ClusterByPosition centerX, minWidth / 2, colOf, numCols

    ReDim colLeft(1 To numCols)
    ReDim colRight(1 To numCols)
    ReDim rowTop(1 To numRows)
    ReDim rowBottom(1 To numRows)
    ReDim occupied(1 To numRows, 1 To numCols)
    For c = 1 To numCols
        colLeft(c) = 1E+30
        colRight(c) = -1E+30
    Next c
    For r = 1 To numRows
        rowTop(r) = 1E+30
        rowBottom(r) = -1E+30
    Next r

    For i = 1 To n
        r = rowOf(i)
        c = colOf(i)
        If occupied(r, c) Then
            MsgBox "Two selected shapes fall in the same grid cell. Move them apart and try again.", vbExclamation, MSG_TITLE
            Exit Sub
        End If
        occupied(r, c) = True
        With shapes(i)
            If .Left < colLeft(c) Then colLeft(c) = .Left
            If .Left + .Width > colRight(c) Then colRight(c) = .Left + .Width
            If .Top < rowTop(r) Then rowTop(r) = .Top
            If .Top + .Height > rowBottom(r) Then rowBottom(r) = .Top + .Height
        End With
    Next i

    ReDim colWidth(1 To numCols)
    ReDim rowHeight(1 To numRows)
    tableLeft = colLeft(1)
    tableTop = rowTop(1)

    ' Track size is the distance to the next track's start, so gaps between shapes are kept.
    For c = 1 To numCols
        If colLeft(c) < tableLeft Then tableLeft = colLeft(c)
        If c < numCols Then colWidth(c) = colLeft(c + 1) - colLeft(c) Else colWidth(c) = colRight(c) - colLeft(c)
        ' Overlapping tracks give a non-positive pitch, so fall back to the track's own extent.
        If colWidth(c) < MIN_TRACK_SIZE Then colWidth(c) = colRight(c) - colLeft(c)
        If colWidth(c) < MIN_TRACK_SIZE Then colWidth(c) = MIN_TRACK_SIZE
        tableWidth = tableWidth + colWidth(c)
    Next c
    For r = 1 To numRows
        If rowTop(r) < tableTop Then tableTop = rowTop(r)
        If r < numRows Then rowHeight(r) = rowTop(r + 1) - rowTop(r) Else rowHeight(r) = rowBottom(r) - rowTop(r)
        If rowHeight(r) < MIN_TRACK_SIZE Then rowHeight(r) = rowBottom(r) - rowTop(r)
        If rowHeight(r) < MIN_TRACK_SIZE Then rowHeight(r) = MIN_TRACK_SIZE
        tableHeight = tableHeight + rowHeight(r)
    Next r

    Set tableShape = container.Shapes.AddTable(numRows, numCols, tableLeft, tableTop, tableWidth, tableHeight)
    Set tbl = tableShape.Table

    For r = 1 To numRows: tbl.Rows(r).Height = rowHeight(r): Next r
    For c = 1 To numCols: tbl.Columns(c).Width = colWidth(c): Next c

    ' Grid positions with no source shape stay empty.
    For i = 1 To n
        CopyContent shapes(i), tbl.Cell(rowOf(i), colOf(i)).Shape
    Next i

    shapes.Delete
    tableShape.Select
    RefreshRibbon
    Exit Sub

Fail:
    msg = Err.Description
    On Error Resume Next
    If Not tableShape Is Nothing Then tableShape.Delete ' leave the original shapes untouched on failure
    MsgBox "Could not convert the shapes to a table: " & msg, vbExclamation, MSG_TITLE
End Sub

' Ribbon onAction callback: converts the selected table into one rectangle per cell (merged cells become one), and deletes the table.
Sub ConvertTableToShapes(control As IRibbonControl)
    Dim tableShape As Shape
    Dim tbl As PowerPoint.Table
    Dim container As Object
    Dim cellShape As Shape
    Dim newShape As Shape
    Dim seen As Collection
    Dim created As Collection
    Dim names() As Variant
    Dim r As Long, c As Long, i As Long
    Dim msg As String

    If Not CanUseActiveWindow() Then Exit Sub
    If SelectedShapeCount <> 1 Then Exit Sub
    Set tableShape = ActiveWindow.Selection.ShapeRange(1)
    If tableShape.HasTable <> msoTrue Then Exit Sub

    On Error GoTo Fail
    Set tbl = tableShape.Table
    Set container = tableShape.Parent
    Set seen = New Collection
    Set created = New Collection

    For r = 1 To tbl.Rows.Count
        For c = 1 To tbl.Columns.Count
            Set cellShape = tbl.Cell(r, c).Shape
            ' Every cell of a merged region reports the same geometry, so position identifies the region.
            If MarkSeen(seen, CellKey(cellShape)) Then
                Set newShape = container.Shapes.AddShape(msoShapeRectangle, cellShape.Left, cellShape.Top, cellShape.Width, cellShape.Height)
                created.Add newShape.Name
                CopyContent cellShape, newShape
            End If
        Next c
    Next r

    tableShape.Delete

    If created.Count > 0 Then
        ReDim names(0 To created.Count - 1)
        For i = 1 To created.Count: names(i - 1) = created(i): Next i
        container.Shapes.Range(names).Select
    End If
    RefreshRibbon
    Exit Sub

Fail:
    msg = Err.Description
    On Error Resume Next
    If Not created Is Nothing Then
        For i = 1 To created.Count: container.Shapes(created(i)).Delete: Next i ' leave the table untouched on failure
    End If
    MsgBox "Could not convert the table to shapes: " & msg, vbExclamation, MSG_TITLE
End Sub

Private Function CellKey(cellShape As Shape) As String
    CellKey = Round(cellShape.Left, 1) & "," & Round(cellShape.Top, 1)
End Function

' True the first time a key is seen; Collection.Add raises on a duplicate key.
Private Function MarkSeen(seen As Collection, ByVal key As String) As Boolean
    On Error Resume Next
    seen.Add True, key
    MarkSeen = (Err.Number = 0)
End Function

' Sorts values and groups them into clusters; a value joins the current cluster when within tolerance of its running average.
Private Sub ClusterByPosition(centers() As Double, ByVal tolerance As Double, ByRef clusterIndex() As Long, ByRef clusterCount As Long)
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

' Copies text, first-paragraph font (size, bold, color) and solid fill from one shape to another.
Private Sub CopyContent(source As Shape, target As Shape)
    Dim sourceFont As Font

    If source.HasTextFrame And target.HasTextFrame Then
        If source.TextFrame.HasText Then
            target.TextFrame.TextRange.Text = source.TextFrame.TextRange.Text
            Set sourceFont = source.TextFrame.TextRange.Paragraphs(1).Font
            If sourceFont.Size > 0 Then target.TextFrame.TextRange.Font.Size = sourceFont.Size
            If sourceFont.Bold <> msoTriStateMixed Then target.TextFrame.TextRange.Font.Bold = sourceFont.Bold
            target.TextFrame.TextRange.Font.Color.RGB = sourceFont.Color.RGB
        End If
    End If

    If source.Fill.Visible = msoTrue And source.Fill.Type = msoFillSolid Then
        target.Fill.ForeColor.RGB = source.Fill.ForeColor.RGB
    End If
End Sub
