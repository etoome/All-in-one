Attribute VB_Name = "Formatting"
Option Explicit

Private Type TShapeFormat
    HasFill As Boolean
    FillVisible As Long
    FillType As Long
    FillColor As Long
    FillTransparency As Single

    HasLine As Boolean
    LineVisible As Long
    LineColor As Long
    LineWeight As Single
    LineDash As Long
    LineStyle As Long
    LineTransparency As Single

    HasTextColor As Boolean
    TextColor As Long
    TextColorTransparency As Single

    HasFontSize As Boolean
    FontSize As Single

    HasType As Boolean
    AutoShapeKind As Long

    HasAngle As Boolean
    Angle As Single
    HasAdjust As Boolean
    AdjCount As Long
    AdjValues(1 To 8) As Single

    HasSize As Boolean
    ShapeWidth As Single
    ShapeHeight As Single

    HasPosition As Boolean
    ShapeLeft As Single
    ShapeTop As Single

    HasAnchor As Boolean
    VerticalAnchor As Long
    HorizontalAnchor As Long

    HasMargins As Boolean
    MarginLeft As Single
    MarginRight As Single
    MarginTop As Single
    MarginBottom As Single

    HasBullet As Boolean
    BulletVisible As Long
    BulletType As Long
    BulletStyle As Long
    BulletStart As Long
    BulletChar As Long
    BulletFontName As String
    BulletRelativeSize As Single
    BulletUseTextColor As Long
    BulletColor As Long

    HasSpacing As Boolean
    RuleWithin As Long
    SpaceWithin As Single
    RuleBefore As Long
    SpaceBefore As Single
    RuleAfter As Long
    SpaceAfter As Single
End Type

Private gCopied As TShapeFormat
Private gHasCopied As Boolean

' Ribbon onAction callback: snapshot all formatting of the first-selected shape.
Sub CopyShapeFormatting(control As IRibbonControl)
    Dim selectedShapes As ShapeRange

    Set selectedShapes = SelectedShapeRange()
    If selectedShapes Is Nothing Then Exit Sub
    If selectedShapes.Count <> 1 Then Exit Sub

    gCopied = SnapshotShape(selectedShapes(1))
    gHasCopied = True

    RefreshRibbon
End Sub

' Ribbon onAction callback: control.Tag picks the formatting item (or "all") to apply to every selected shape.
Sub ApplyShapeFormatting(control As IRibbonControl)
    Dim selectedShapes As ShapeRange
    Dim i As Long

    If Not gHasCopied Then Exit Sub

    Set selectedShapes = SelectedShapeRange()
    If selectedShapes Is Nothing Then Exit Sub
    For i = 1 To selectedShapes.Count
        ApplyFormattingItem selectedShapes(i), control.Tag
    Next i
End Sub

Sub EnableApplyFormatting(control As IRibbonControl, ByRef returnedVal)
    returnedVal = gHasCopied And (SelectedShapeCount >= 1)
End Sub

' The Copied*Color functions return False when nothing is copied or the source has no solid color to show.
Public Function CopiedFillColor(ByRef rgbColor As Long) As Boolean
    If Not gHasCopied Then Exit Function
    If Not gCopied.HasFill Then Exit Function
    If gCopied.FillVisible = msoFalse Or gCopied.FillType <> msoFillSolid Then Exit Function
    rgbColor = gCopied.FillColor
    CopiedFillColor = True
End Function

Public Function CopiedLineColor(ByRef rgbColor As Long) As Boolean
    If Not gHasCopied Then Exit Function
    If Not gCopied.HasLine Then Exit Function
    If gCopied.LineVisible = msoFalse Then Exit Function
    rgbColor = gCopied.LineColor
    CopiedLineColor = True
End Function

Public Function CopiedTextColor(ByRef rgbColor As Long) As Boolean
    If Not gHasCopied Then Exit Function
    If Not gCopied.HasTextColor Then Exit Function
    rgbColor = gCopied.TextColor
    CopiedTextColor = True
End Function

Private Sub ApplyFormattingItem(shp As Shape, ByVal tag As String)
    Dim applyAll As Boolean
    applyAll = (tag = "all")

    ' Type, size and angle first so position lands on the final geometry.
    If applyAll Or tag = "type" Then ApplyType shp
    If applyAll Or tag = "width" Then ApplyWidth shp
    If applyAll Or tag = "height" Then ApplyHeight shp
    If applyAll Or tag = "angles" Then ApplyAngle shp
    If applyAll Or tag = "position" Then ApplyPosition shp
    If applyAll Or tag = "fillcolor" Then ApplyFill shp
    If applyAll Or tag = "linestyle" Then ApplyLine shp
    If applyAll Or tag = "textcolor" Then ApplyTextColor shp
    If applyAll Or tag = "fontsize" Then ApplyFontSize shp
    If applyAll Or tag = "textanchor" Then ApplyAnchor shp
    If applyAll Or tag = "margins" Then ApplyMargins shp
    If applyAll Or tag = "bullet" Then ApplyBullet shp
    If applyAll Or tag = "linespacing" Then ApplySpacing shp
End Sub

Private Function SnapshotShape(shp As Shape) As TShapeFormat
    Dim snapshot As TShapeFormat
    Dim paragraphFormat As ParagraphFormat
    Dim bulletFormat As BulletFormat
    Dim adjustmentCount As Long
    Dim i As Long

    On Error Resume Next

    ' A Has* flag is set only when every read its Apply routine depends on succeeded.
    Err.Clear
    snapshot.FillVisible = shp.Fill.Visible
    If snapshot.FillVisible <> msoFalse Then
        snapshot.FillType = shp.Fill.Type
        snapshot.FillColor = shp.Fill.ForeColor.RGB
        snapshot.FillTransparency = shp.Fill.Transparency
    End If
    snapshot.HasFill = (Err.Number = 0)

    Err.Clear
    snapshot.LineVisible = shp.Line.Visible
    If snapshot.LineVisible <> msoFalse Then
        snapshot.LineColor = shp.Line.ForeColor.RGB
        snapshot.LineWeight = shp.Line.Weight
        snapshot.LineDash = shp.Line.DashStyle
        snapshot.LineStyle = shp.Line.Style
        snapshot.LineTransparency = shp.Line.Transparency
    End If
    snapshot.HasLine = (Err.Number = 0)

    If shp.Type = msoAutoShape Then
        Err.Clear
        snapshot.AutoShapeKind = shp.AutoShapeType
        snapshot.HasType = (Err.Number = 0)
    End If

    Err.Clear
    snapshot.Angle = shp.Rotation
    snapshot.HasAngle = (Err.Number = 0)

    Err.Clear
    adjustmentCount = shp.Adjustments.Count
    If adjustmentCount > UBound(snapshot.AdjValues) Then adjustmentCount = UBound(snapshot.AdjValues)
    For i = 1 To adjustmentCount
        snapshot.AdjValues(i) = shp.Adjustments.Item(i)
    Next i
    snapshot.AdjCount = adjustmentCount
    snapshot.HasAdjust = (Err.Number = 0)

    Err.Clear
    snapshot.ShapeWidth = shp.Width
    snapshot.ShapeHeight = shp.Height
    snapshot.HasSize = (Err.Number = 0)

    Err.Clear
    snapshot.ShapeLeft = shp.Left
    snapshot.ShapeTop = shp.Top
    snapshot.HasPosition = (Err.Number = 0)

    If shp.HasTextFrame Then
        Err.Clear
        snapshot.VerticalAnchor = shp.TextFrame.VerticalAnchor
        snapshot.HorizontalAnchor = shp.TextFrame.HorizontalAnchor
        snapshot.HasAnchor = (Err.Number = 0)

        Err.Clear
        snapshot.MarginLeft = shp.TextFrame.MarginLeft
        snapshot.MarginRight = shp.TextFrame.MarginRight
        snapshot.MarginTop = shp.TextFrame.MarginTop
        snapshot.MarginBottom = shp.TextFrame.MarginBottom
        snapshot.HasMargins = (Err.Number = 0)

        Err.Clear
        With shp.TextFrame2.TextRange.Paragraphs(1).Font.Fill
            snapshot.TextColor = .ForeColor.RGB
            snapshot.TextColorTransparency = .Transparency
        End With
        snapshot.HasTextColor = (Err.Number = 0)

        ' First paragraph stands in for mixed sizes.
        Err.Clear
        snapshot.FontSize = shp.TextFrame2.TextRange.Paragraphs(1).Font.Size
        snapshot.HasFontSize = (Err.Number = 0)

        ' First paragraph stands in for mixed paragraph formatting.
        Set paragraphFormat = shp.TextFrame.TextRange.Paragraphs(1).ParagraphFormat

        If Not paragraphFormat Is Nothing Then
            Set bulletFormat = paragraphFormat.Bullet

            Err.Clear
            snapshot.BulletVisible = bulletFormat.Visible
            snapshot.BulletType = bulletFormat.Type
            If snapshot.BulletVisible = msoFalse Then
                snapshot.HasBullet = (Err.Number = 0)
            ' Picture and mixed bullets cannot be rebuilt from a snapshot, so HasBullet stays False.
            ElseIf snapshot.BulletType = ppBulletNumbered Or snapshot.BulletType = ppBulletUnnumbered Then
                snapshot.BulletRelativeSize = bulletFormat.RelativeSize
                snapshot.BulletUseTextColor = bulletFormat.UseTextColor
                If snapshot.BulletUseTextColor = msoFalse Then snapshot.BulletColor = bulletFormat.Font.Color.RGB
                If snapshot.BulletType = ppBulletNumbered Then
                    snapshot.BulletStyle = bulletFormat.Style
                    snapshot.BulletStart = bulletFormat.StartValue
                Else
                    snapshot.BulletFontName = bulletFormat.Font.Name
                    snapshot.BulletChar = bulletFormat.Character
                End If
                snapshot.HasBullet = (Err.Number = 0)
            End If

            Err.Clear
            snapshot.RuleWithin = paragraphFormat.LineRuleWithin
            snapshot.SpaceWithin = paragraphFormat.SpaceWithin
            snapshot.RuleBefore = paragraphFormat.LineRuleBefore
            snapshot.SpaceBefore = paragraphFormat.SpaceBefore
            snapshot.RuleAfter = paragraphFormat.LineRuleAfter
            snapshot.SpaceAfter = paragraphFormat.SpaceAfter
            snapshot.HasSpacing = (Err.Number = 0)
        End If
    End If

    On Error GoTo 0
    SnapshotShape = snapshot
End Function

Private Sub ApplyFill(shp As Shape)
    If Not gCopied.HasFill Then Exit Sub
    On Error Resume Next

    If gCopied.FillVisible = msoFalse Then
        shp.Fill.Visible = msoFalse
        Exit Sub
    End If

    ' Gradient, picture and pattern fills are not reproduced; only solid colour is.
    If gCopied.FillType = msoFillSolid Then
        shp.Fill.Visible = msoTrue
        shp.Fill.Solid
        shp.Fill.ForeColor.RGB = gCopied.FillColor
        shp.Fill.Transparency = gCopied.FillTransparency
    End If
End Sub

Private Sub ApplyLine(shp As Shape)
    If Not gCopied.HasLine Then Exit Sub
    On Error Resume Next

    If gCopied.LineVisible = msoFalse Then
        shp.Line.Visible = msoFalse
        Exit Sub
    End If

    shp.Line.Visible = msoTrue
    shp.Line.ForeColor.RGB = gCopied.LineColor
    shp.Line.Weight = gCopied.LineWeight
    shp.Line.DashStyle = gCopied.LineDash
    shp.Line.Style = gCopied.LineStyle
    shp.Line.Transparency = gCopied.LineTransparency
End Sub

Private Sub ApplyTextColor(shp As Shape)
    If Not gCopied.HasTextColor Then Exit Sub
    If Not shp.HasTextFrame Then Exit Sub
    On Error Resume Next

    With shp.TextFrame2.TextRange.Font.Fill
        .Visible = msoTrue
        .Solid
        .ForeColor.RGB = gCopied.TextColor
        .Transparency = gCopied.TextColorTransparency
    End With
End Sub

Private Sub ApplyFontSize(shp As Shape)
    If Not gCopied.HasFontSize Then Exit Sub
    If Not shp.HasTextFrame Then Exit Sub
    On Error Resume Next
    shp.TextFrame2.TextRange.Font.Size = gCopied.FontSize
End Sub

Private Sub ApplyType(shp As Shape)
    If Not gCopied.HasType Then Exit Sub
    If shp.Type <> msoAutoShape Then Exit Sub
    On Error Resume Next
    shp.AutoShapeType = gCopied.AutoShapeKind
End Sub

Private Sub ApplyAngle(shp As Shape)
    Dim adjustmentCount As Long
    Dim i As Long

    On Error Resume Next
    If gCopied.HasAngle Then shp.Rotation = gCopied.Angle

    ' Adjustment handles (e.g. rounded-corner radius) only mean the same thing on the same shape type.
    If Not gCopied.HasAdjust Or Not gCopied.HasType Then Exit Sub
    If shp.Type <> msoAutoShape Then Exit Sub
    If shp.AutoShapeType <> gCopied.AutoShapeKind Then Exit Sub
    adjustmentCount = shp.Adjustments.Count
    If adjustmentCount > gCopied.AdjCount Then adjustmentCount = gCopied.AdjCount
    For i = 1 To adjustmentCount
        shp.Adjustments.Item(i) = gCopied.AdjValues(i)
    Next i
End Sub

Private Sub ApplyWidth(shp As Shape)
    Dim wasLocked As Long
    Dim lockReadable As Boolean

    If Not gCopied.HasSize Then Exit Sub
    On Error Resume Next
    Err.Clear
    wasLocked = shp.LockAspectRatio
    lockReadable = (Err.Number = 0)
    shp.LockAspectRatio = msoFalse
    shp.Width = gCopied.ShapeWidth
    If lockReadable Then shp.LockAspectRatio = wasLocked
End Sub

Private Sub ApplyHeight(shp As Shape)
    Dim wasLocked As Long
    Dim lockReadable As Boolean

    If Not gCopied.HasSize Then Exit Sub
    On Error Resume Next
    Err.Clear
    wasLocked = shp.LockAspectRatio
    lockReadable = (Err.Number = 0)
    shp.LockAspectRatio = msoFalse
    shp.Height = gCopied.ShapeHeight
    If lockReadable Then shp.LockAspectRatio = wasLocked
End Sub

Private Sub ApplyPosition(shp As Shape)
    If Not gCopied.HasPosition Then Exit Sub
    On Error Resume Next
    shp.Left = gCopied.ShapeLeft
    shp.Top = gCopied.ShapeTop
End Sub

Private Sub ApplyAnchor(shp As Shape)
    If Not gCopied.HasAnchor Then Exit Sub
    If Not shp.HasTextFrame Then Exit Sub
    On Error Resume Next
    shp.TextFrame.VerticalAnchor = gCopied.VerticalAnchor
    shp.TextFrame.HorizontalAnchor = gCopied.HorizontalAnchor
End Sub

Private Sub ApplyMargins(shp As Shape)
    If Not gCopied.HasMargins Then Exit Sub
    If Not shp.HasTextFrame Then Exit Sub
    On Error Resume Next
    shp.TextFrame.MarginLeft = gCopied.MarginLeft
    shp.TextFrame.MarginRight = gCopied.MarginRight
    shp.TextFrame.MarginTop = gCopied.MarginTop
    shp.TextFrame.MarginBottom = gCopied.MarginBottom
End Sub

Private Sub ApplyBullet(shp As Shape)
    Dim bulletFormat As BulletFormat

    If Not gCopied.HasBullet Then Exit Sub
    If Not shp.HasTextFrame Then Exit Sub
    On Error Resume Next

    Set bulletFormat = shp.TextFrame.TextRange.ParagraphFormat.Bullet
    If gCopied.BulletVisible = msoFalse Then
        bulletFormat.Visible = msoFalse
        Exit Sub
    End If

    bulletFormat.Visible = msoTrue
    If gCopied.BulletType = ppBulletNumbered Then
        bulletFormat.Type = ppBulletNumbered
        bulletFormat.Style = gCopied.BulletStyle
        bulletFormat.StartValue = gCopied.BulletStart
    Else
        bulletFormat.Type = ppBulletUnnumbered
        bulletFormat.Font.Name = gCopied.BulletFontName
        bulletFormat.Character = gCopied.BulletChar
    End If

    bulletFormat.RelativeSize = gCopied.BulletRelativeSize
    bulletFormat.UseTextColor = gCopied.BulletUseTextColor
    If gCopied.BulletUseTextColor = msoFalse Then bulletFormat.Font.Color.RGB = gCopied.BulletColor
End Sub

Private Sub ApplySpacing(shp As Shape)
    If Not gCopied.HasSpacing Then Exit Sub
    If Not shp.HasTextFrame Then Exit Sub
    On Error Resume Next

    With shp.TextFrame.TextRange.ParagraphFormat
        ' The rule must be set before the value, otherwise the value is read as the old unit.
        .LineRuleWithin = gCopied.RuleWithin
        .SpaceWithin = gCopied.SpaceWithin
        .LineRuleBefore = gCopied.RuleBefore
        .SpaceBefore = gCopied.SpaceBefore
        .LineRuleAfter = gCopied.RuleAfter
        .SpaceAfter = gCopied.SpaceAfter
    End With
End Sub
