Attribute VB_Name = "TableCommands"
Option Explicit

' Ribbon onAction callback: runs the built-in command named in control.Tag, only while a table is active.
Sub ExecuteTableCommand(control As IRibbonControl)
    ' ExecuteMso raises when the command is disabled, so guard with the same check as getEnabled.
    If Not IsTableActive() Then Exit Sub
    Application.CommandBars.ExecuteMso control.Tag
End Sub
