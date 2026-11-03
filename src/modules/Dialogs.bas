Attribute VB_Name = "Dialogs"
Option Explicit

' Ribbon onAction callback: open the built-in Font dialog.
Sub ShowFontDialog(control As IRibbonControl)
    If Not CanUseActiveWindow() Then Exit Sub
    Application.CommandBars.ExecuteMso "FontDialogPowerPoint"
End Sub

' Ribbon onAction callback: open the built-in Paragraph dialog.
Sub ShowParagraphDialog(control As IRibbonControl)
    If Not CanUseActiveWindow() Then Exit Sub
    Application.CommandBars.ExecuteMso "PowerPointParagraphDialog"
End Sub

' Ribbon onAction callback: open the built-in Format Shape (Object) dialog.
Sub ShowObjectFormatDialog(control As IRibbonControl)
    If SelectedShapes(SelectionAny) Is Nothing Then Exit Sub
    Application.CommandBars.ExecuteMso "ObjectFormatDialog"
End Sub

' Ribbon onAction callback: open the built-in Size and Position (Format Shape) dialog.
Sub ShowSizeAndPositionDialog(control As IRibbonControl)
    ' ExecuteMso raises 80004005 when the control is disabled (no shape selected).
    If SelectedShapes(SelectionAny) Is Nothing Then Exit Sub
    Application.CommandBars.ExecuteMso "ObjectSizeAndPositionDialog"
End Sub
