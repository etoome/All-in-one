Attribute VB_Name = "ArchiveSlide"
Option Explicit

' Context-menu onAction: move the selected slide(s) into a section named "archive"
' at the end of the presentation, creating the section if it does not exist.
' Named ArchiveSelectedSlides (not ArchiveSlide) to avoid VBA's "Ambiguous name
' detected" compile error when a Sub shares its containing module's name.
Sub ArchiveSelectedSlides(control As IRibbonControl)
    If Not CanUseActiveWindow() Then Exit Sub
    If ActiveWindow.Selection.Type <> ppSelectionSlides Then Exit Sub

    Dim pres As Presentation
    Set pres = ActivePresentation

    ' Remember the slide currently on screen (View.Slide is invalid in some views).
    Dim savedSlide As Slide
    On Error Resume Next
    Set savedSlide = ActiveWindow.View.Slide
    On Error GoTo 0

    Dim selected As SlideRange
    Set selected = ActiveWindow.Selection.SlideRange
    Dim n As Long
    n = selected.Count
    If n = 0 Then Exit Sub

    ' Capture slide references now, then sort by deck order; indices shift as we move.
    Dim slides() As Slide
    ReDim slides(1 To n)
    Dim i As Long, j As Long
    For i = 1 To n
        Set slides(i) = selected(i)
    Next i
    For i = 2 To n
        Dim key As Slide
        Set key = slides(i)
        j = i - 1
        Do While j >= 1
            If slides(j).SlideIndex <= key.SlideIndex Then Exit Do
            Set slides(j + 1) = slides(j)
            j = j - 1
        Loop
        Set slides(j + 1) = key
    Next i

    ' Hold the slide before the first archived one (by reference; indices shift below).
    Dim anchorSlide As Slide
    If slides(1).SlideIndex > 1 Then Set anchorSlide = pres.Slides(slides(1).SlideIndex - 1)

    Dim sp As SectionProperties
    Set sp = pres.SectionProperties

    ' Find an existing "archive" section (case-insensitive).
    Dim bkIdx As Long
    bkIdx = 0
    For i = 1 To sp.Count
        If StrComp(sp.Name(i), "archive", vbTextCompare) = 0 Then
            bkIdx = i
            Exit For
        End If
    Next i

    ' Ensure archive is the last section so appended slides land inside it.
    If bkIdx > 0 And bkIdx < sp.Count Then
        sp.Move bkIdx, sp.Count
    End If

    ' Append the selected slides to the end, preserving their order, and hide them.
    For i = 1 To n
        slides(i).MoveTo pres.Slides.Count
        slides(i).SlideShowTransition.Hidden = msoTrue
    Next i

    ' Create the section (starting at the first moved slide) if it did not exist.
    If bkIdx = 0 Then
        sp.AddBeforeSlide pres.Slides.Count - n + 1, "Archive"
    End If

    ' Restore focus: the slide that was on screen, unless it was archived.
    Dim target As Slide
    Set target = savedSlide
    For i = 1 To n
        If slides(i) Is target Then Set target = anchorSlide: Exit For
    Next i
    If target Is Nothing Then Set target = pres.Slides(1)

    ' Scroll back there and reselect it, so focus leaves the archived slides.
    On Error Resume Next
    ActiveWindow.View.GotoSlide target.SlideIndex
    target.Select
    On Error GoTo 0
End Sub

' Context-menu onAction: move the selected slide(s) out of the "archive" section,
' back into the main deck (just before the section), and unhide them.
Sub RestoreSelectedSlides(control As IRibbonControl)
    If Not CanUseActiveWindow() Then Exit Sub
    If ActiveWindow.Selection.Type <> ppSelectionSlides Then Exit Sub

    Dim pres As Presentation
    Set pres = ActivePresentation

    Dim savedSlide As Slide
    On Error Resume Next
    Set savedSlide = ActiveWindow.View.Slide
    On Error GoTo 0

    Dim selected As SlideRange
    Set selected = ActiveWindow.Selection.SlideRange
    Dim n As Long
    n = selected.Count
    If n = 0 Then Exit Sub

    ' Capture slide references now, then sort by deck order; indices shift as we move.
    Dim slides() As Slide
    ReDim slides(1 To n)
    Dim i As Long, j As Long
    For i = 1 To n
        Set slides(i) = selected(i)
    Next i
    For i = 2 To n
        Dim key As Slide
        Set key = slides(i)
        j = i - 1
        Do While j >= 1
            If slides(j).SlideIndex <= key.SlideIndex Then Exit Do
            Set slides(j + 1) = slides(j)
            j = j - 1
        Loop
        Set slides(j + 1) = key
    Next i

    Dim sp As SectionProperties
    Set sp = pres.SectionProperties

    Dim bkIdx As Long
    bkIdx = 0
    For i = 1 To sp.Count
        If StrComp(sp.Name(i), "archive", vbTextCompare) = 0 Then
            bkIdx = i
            Exit For
        End If
    Next i
    If bkIdx = 0 Then Exit Sub ' no archive section, nothing to do

    ' Move each slide to just before the section, unhide it, and shift the insert point along.
    Dim insertAt As Long
    insertAt = sp.FirstSlide(bkIdx)
    For i = 1 To n
        slides(i).MoveTo insertAt
        slides(i).SlideShowTransition.Hidden = msoFalse
        insertAt = insertAt + 1
    Next i

    ' Clean up the section if it no longer holds any slides.
    If sp.SlidesCount(bkIdx) = 0 Then sp.Delete bkIdx, False

    ' Restore focus: the slide that was on screen (still valid, now visible again).
    Dim target As Slide
    Set target = savedSlide
    If target Is Nothing Then Set target = slides(1)

    On Error Resume Next
    ActiveWindow.View.GotoSlide target.SlideIndex
    target.Select
    On Error GoTo 0
End Sub

' Ribbon getVisible callback: shows "Archive" unless the first selected slide is already archived.
Sub GetArchiveVisible(control As IRibbonControl, ByRef returnedVal)
    returnedVal = Not IsFirstSelectedSlideArchived()
End Sub

' Ribbon getVisible callback: shows "Unarchive" only when the first selected slide is archived.
Sub GetUnarchiveVisible(control As IRibbonControl, ByRef returnedVal)
    returnedVal = IsFirstSelectedSlideArchived()
End Sub

Private Function IsFirstSelectedSlideArchived() As Boolean
    If Not CanUseActiveWindow() Then Exit Function
    If ActiveWindow.Selection.Type <> ppSelectionSlides Then Exit Function
    Dim sel As SlideRange
    Set sel = ActiveWindow.Selection.SlideRange
    If sel.Count = 0 Then Exit Function

    Dim pres As Presentation
    Set pres = ActivePresentation
    Dim secIdx As Long
    secIdx = SlideSectionIndex(pres, sel(1).SlideIndex)
    If secIdx = 0 Then Exit Function

    IsFirstSelectedSlideArchived = (StrComp(pres.SectionProperties.Name(secIdx), "archive", vbTextCompare) = 0)
End Function

' Returns the 1-based section index containing slideIdx, or 0 if none.
Private Function SlideSectionIndex(pres As Presentation, slideIdx As Long) As Long
    Dim sp As SectionProperties
    Set sp = pres.SectionProperties
    Dim i As Long, startIdx As Long, cnt As Long
    For i = 1 To sp.Count
        startIdx = sp.FirstSlide(i)
        cnt = sp.SlidesCount(i)
        If slideIdx >= startIdx And slideIdx <= startIdx + cnt - 1 Then
            SlideSectionIndex = i
            Exit Function
        End If
    Next i
    SlideSectionIndex = 0
End Function
