Attribute VB_Name = "RibbonEvents"
Option Explicit

' Cached ribbon reference so getEnabled callbacks can be re-evaluated on demand.
Public gRibbon As IRibbonUI

' Keeps the application event handler alive for the add-in's lifetime.
Private gAppEvents As AppEvents

' customUI onLoad callback: capture the ribbon and start listening for selection changes.
Sub RibbonOnLoad(ribbon As IRibbonUI)
    Set gRibbon = ribbon
    Set gAppEvents = New AppEvents
    ActivateAllInOneTab
    CleanupOldVersions
    StartUpdateCheck
End Sub

' Re-runs every control's getEnabled callback so selection-dependent buttons activate.
Public Sub RefreshRibbon()
    If Not gRibbon Is Nothing Then gRibbon.Invalidate
End Sub

' Selects the All-in-one tab; guarded because ActivateTab can raise on some Office builds.
' Skipped in Slide Master view so PowerPoint's contextual Slide Master tab stays selected.
Public Sub ActivateAllInOneTab()
    On Error Resume Next
    If IsSlideMasterView() Then Exit Sub
    If Not gRibbon Is Nothing Then gRibbon.ActivateTab "all-in-one"
End Sub
