Attribute VB_Name = "Language"
Option Explicit

' Ribbon onAction callback: set every slide's text language to English.
Sub SetLanguageEnglish(control As IRibbonControl)
    ApplyDefaultLanguage msoLanguageIDEnglishUK
End Sub

' Ribbon onAction callback: set every slide's text language to French.
Sub SetLanguageFrench(control As IRibbonControl)
    ApplyDefaultLanguage msoLanguageIDFrench
End Sub

' Ribbon onAction callback: set every slide's text language to Dutch.
Sub SetLanguageDutch(control As IRibbonControl)
    ApplyDefaultLanguage msoLanguageIDDutch
End Sub

' Applies langID to all text on every slide, slide master, and custom layout so
' existing text is retagged and new text inherits it from the masters/layouts.
Private Sub ApplyDefaultLanguage(langID As MsoLanguageID)
    Dim pres As Presentation
    Dim sld As Slide
    Dim dsn As design
    Dim lay As CustomLayout
    Dim shp As Shape

    If Application.Windows.Count = 0 Then Exit Sub
    On Error Resume Next
    Set pres = Application.ActivePresentation
    On Error GoTo 0
    If pres Is Nothing Then Exit Sub

    ' Default language for text typed later, not just existing/master/layout text.
    pres.DefaultLanguageID = langID

    For Each sld In pres.Slides
        For Each shp In sld.Shapes
            ApplyLanguageToShape shp, langID
        Next shp
    Next sld

    For Each dsn In pres.Designs
        For Each shp In dsn.SlideMaster.Shapes
            ApplyLanguageToShape shp, langID
        Next shp
        For Each lay In dsn.SlideMaster.CustomLayouts
            For Each shp In lay.Shapes
                ApplyLanguageToShape shp, langID
            Next shp
        Next lay
    Next dsn
End Sub

' Sets langID on a shape's text, recursing into groups and table cells.
Private Sub ApplyLanguageToShape(shp As Shape, langID As MsoLanguageID)
    Dim item As Shape
    Dim r As Long, c As Long

    If shp.Type = msoGroup Then
        For Each item In shp.GroupItems
            ApplyLanguageToShape item, langID
        Next item
        Exit Sub
    End If

    If shp.HasTable Then
        With shp.Table
            For r = 1 To .Rows.Count
                For c = 1 To .Columns.Count
                    .Cell(r, c).Shape.TextFrame.TextRange.LanguageID = langID
                Next c
            Next r
        End With
        Exit Sub
    End If

    If shp.HasTextFrame Then
        ' Set even when empty so master/layout placeholders tag newly typed text.
        shp.TextFrame.TextRange.LanguageID = langID
    End If
End Sub
