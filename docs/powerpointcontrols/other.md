# PowerPoint Ribbon Controls — Backstage, Quick Access Toolbar & Other

idMso identifiers that aren't part of the main ribbon tabs or context menus. See [README.md](README.md) for how to use these tables.

## Backstage View (File tab)

### PlaceTabHome

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupRecentDocuments | group |  |  |
| HomePageSlabCreateNew | group |  |  |
| HomePlaceRecommendedDocuments | group |  |  |

### TabHelp

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupAboutOfficeProducts | group |  |  |
| GroupBackstageIdentity | group |  |  |
| GroupBackstagePrivacy | group |  |  |
| GroupBackstageSignIn | group |  |  |
| GroupBackstageSignInDisabled | group |  |  |
| GroupClickToRunUpdateStatus | group |  |  |
| GroupOfficeBranding | group |  |  |
| GroupOfficeInsider | group |  |  |
| GroupUpdateChannel | group |  |  |
| GroupWhatsNewInOfficeProducts | group |  |  |
| ManageServices | group |  |  |
| Personalization | group |  |  |
| Theming | group |  |  |
| ManagePrivacy | button | GroupBackstagePrivacy |  |
| GroupOfficeInsiderAbout | button | GroupOfficeInsider |  |
| GroupOfficeInsiderChannel | button | GroupOfficeInsider |  |
| GroupOfficeInsiderHelp | button | GroupOfficeInsider |  |
| GroupOfficeInsiderRegistration | button | GroupOfficeInsider |  |
| UpdateChannel | button | GroupUpdateChannel |  |

### TabInfo

| idMso | Type | Group | Parent |
|---|---|---|---|
| AppGuardTrustPromotion | button |  |  |
| DocuemntVersionHistory | group |  |  |
| GroupAllAuthors | group |  |  |
| GroupARMPreview | group |  |  |
| GroupBroadcastEndWarning | group |  |  |
| GroupBroadcastResumeWarning | group |  |  |
| GroupCachedOfflineMergeable | group |  |  |
| GroupCheckIn | group |  |  |
| GroupCompressMedia | group |  |  |
| GroupDocumentProperties | group |  |  |
| GroupDownloading | group |  |  |
| GroupFileConvert | group |  |  |
| GroupOptimizeCompatibility | group |  |  |
| GroupPermissions | group |  |  |
| GroupPrepareForSharing | group |  |  |
| GroupProtectedView | group |  |  |
| GroupReadOnly | group |  |  |
| GroupReadOnlyCached | group |  |  |
| GroupReadOnlyCachedMergeable | group |  |  |
| GroupReadOnlyCheckOutRequired | group |  |  |
| GroupReadOnlyOffline | group |  |  |
| GroupReadOnlyServer | group |  |  |
| GroupSecurityInformation | group |  |  |
| GroupSecurityWarning | group |  |  |
| GroupSignatures | group |  |  |
| GroupThumbnail | group |  |  |
| GroupUpdatesAvailable | group |  |  |
| GroupUploadErrors | group |  |  |
| GroupVersions | group |  |  |
| GroupWorkflows | group |  |  |
| GrupPolicyWarning | group |  |  |
| OfficePolicyTips | group |  |  |
| FileCheckOutDiscard | button | GroupCheckIn |  |
| UpgradeDocument | button | GroupFileConvert |  |
| FileAddDigitalSignature | button | GroupPermissions |  |
| FileDocumentEncrypt | control | GroupPermissions |  |
| FileMarkAsFinal | control | GroupPermissions |  |
| FileMarkAsReadOnlyRecommended | control | GroupPermissions |  |
| UsagePermissions | button | GroupPermissions |  |
| AllowPersonallyIdentifiableInformation | control | GroupPrepareForSharing |  |

### TabOfficeFeedback

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupOfficeSendFrown | group |  |  |
| GroupOfficeSendSmile | group |  |  |
| GroupOfficeSendSuggestion | group |  |  |

### TabOfficeStart

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupOfficeStart | group |  |  |

### TabPrint

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupDownloading | group |  |  |
| GroupPrintPreview | group |  |  |
| GroupPrintProtectedView | group |  |  |
| GroupPrintSettings | group |  |  |
| FilePrintCustomRange | control | GroupPrintSettings |  |

### TabPublish

| idMso | Type | Group | Parent |
|---|---|---|---|
| PublishGroup | taskFormGroup |  |  |
| FileTypes | category | PublishGroup |  |
| CreateHandoutsInWord | task | PublishGroup | FileTypes |
| ExportToAnimatedGif | task | PublishGroup | FileTypes |
| ExportToVideo | task | PublishGroup | FileTypes |
| FilePackageForCD | task | PublishGroup | FileTypes |
| FileSaveAsPdfOrXps | task | PublishGroup | FileTypes |
| FileTypeChange | task | PublishGroup | FileTypes |
| GroupCreateHandoutsInWord | group | PublishGroup | FileTypes > CreateHandoutsInWord |
| GroupCreatePdfOrXpsDocument | group | PublishGroup | FileTypes > FileSaveAsPdfOrXps |
| GroupCreatePdfOrXpsDocumentSlab | group | PublishGroup | FileTypes > FileSaveAsPdfOrXps |
| GroupExportToAnimatedGif | group | PublishGroup | FileTypes > ExportToAnimatedGif |
| GroupExportToVideo | group | PublishGroup | FileTypes > ExportToVideo |
| GroupFileSave | group | PublishGroup | FileTypes > FileTypeChange |
| GroupPackageForCD | group | PublishGroup | FileTypes > FilePackageForCD |
| UploadToMSStream | task | PublishGroup | FileTypes |
| UploadToMSStreamExportGroup | group | PublishGroup | FileTypes > UploadToMSStream |

### TabRecent

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupModernOpenPlaces | group |  |  |
| GroupOpenPlaces | taskFormGroup |  |  |
| ButtonCategoryCloudServices | category | GroupModernOpenPlaces |  |
| ButtonCategoryLocalServices | category | GroupModernOpenPlaces |  |
| ButtonGroupCloudServices | control | GroupModernOpenPlaces |  |
| ButtonGroupLocalServices | control | GroupModernOpenPlaces |  |
| ButtonGroupRecentDocuments | control | GroupModernOpenPlaces |  |
| ButtonOpenBrowse | button | GroupModernOpenPlaces |  |
| ButtonTaskDynamicServiceProvider | task | GroupModernOpenPlaces |  |
| ButtonTaskDynamicServiceProvider | control | GroupModernOpenPlaces |  |
| ButtonTaskFixItHub | task | GroupModernOpenPlaces |  |
| ButtonTaskRecentDocuments | task | GroupModernOpenPlaces |  |
| ButtonTaskSharedWithMe | task | GroupModernOpenPlaces |  |
| CloudFixItHub | group | GroupModernOpenPlaces |  |
| CloudSkyDriveUpsellGroup | group | GroupModernOpenPlaces |  |
| GroupAddLocationLocal | group | GroupModernOpenPlaces |  |
| GroupCloudGettingStartedOpenMRUPlacesOrNavSlab | group | GroupModernOpenPlaces |  |
| GroupLocalGettingStartedOpenMRUPlacesOrNavSlab | group | GroupModernOpenPlaces |  |
| GroupRecentCloudPlaces | group | GroupModernOpenPlaces |  |
| GroupRecentDocumentsNew | group | GroupModernOpenPlaces |  |
| GroupRecentLocalPlaces | group | GroupModernOpenPlaces |  |
| GroupRecentPinnableCloudPlaces | group | GroupModernOpenPlaces |  |
| GroupSharedWithMeDocumentsNew | group | GroupModernOpenPlaces |  |
| LoadingCloudServicesGroup | group | GroupModernOpenPlaces |  |
| PinnableGroupCloudGettingStartedOpenMRUPlacesOrNavSlab | group | GroupModernOpenPlaces |  |
| ButtonOpenBrowse | button | GroupModernOpenPlaces | ButtonCategoryCloudServices > ButtonTaskRecentDocuments |
| ButtonTaskDynamicServiceProvider | task | GroupModernOpenPlaces | ButtonCategoryCloudServices |
| ButtonTaskDynamicServiceProvider | control | GroupModernOpenPlaces | ButtonCategoryCloudServices |
| ButtonTaskFixItHub | task | GroupModernOpenPlaces | ButtonCategoryCloudServices |
| ButtonTaskRecentDocuments | task | GroupModernOpenPlaces | ButtonCategoryCloudServices |
| ButtonTaskSharedWithMe | task | GroupModernOpenPlaces | ButtonCategoryCloudServices |
| CloudFixItHub | group | GroupModernOpenPlaces | ButtonCategoryCloudServices > ButtonTaskFixItHub |
| CloudSkyDriveUpsellGroup | group | GroupModernOpenPlaces | ButtonCategoryCloudServices > ButtonTaskDynamicServiceProvider |
| GroupCloudGettingStartedOpenMRUPlacesOrNavSlab | group | GroupModernOpenPlaces | ButtonCategoryCloudServices > ButtonTaskDynamicServiceProvider |
| GroupRecentCloudPlaces | group | GroupModernOpenPlaces | ButtonCategoryCloudServices > ButtonTaskDynamicServiceProvider |
| GroupRecentDocumentsNew | group | GroupModernOpenPlaces | ButtonCategoryCloudServices > ButtonTaskRecentDocuments |
| GroupSharedWithMeDocumentsNew | group | GroupModernOpenPlaces | ButtonCategoryCloudServices > ButtonTaskSharedWithMe |
| LoadingCloudServicesGroup | group | GroupModernOpenPlaces | ButtonCategoryCloudServices > ButtonTaskDynamicServiceProvider |
| ButtonTaskDynamicServiceProvider | task | GroupModernOpenPlaces | ButtonCategoryLocalServices |
| GroupAddLocationLocal | group | GroupModernOpenPlaces | ButtonCategoryLocalServices > ButtonTaskDynamicServiceProvider |
| GroupLocalGettingStartedOpenMRUPlacesOrNavSlab | group | GroupModernOpenPlaces | ButtonCategoryLocalServices > ButtonTaskDynamicServiceProvider |
| GroupRecentLocalPlaces | group | GroupModernOpenPlaces | ButtonCategoryLocalServices > ButtonTaskDynamicServiceProvider |
| CloudSkyDriveUpsellGroup | group | GroupModernOpenPlaces | ButtonTaskDynamicServiceProvider |
| GroupAddLocationLocal | group | GroupModernOpenPlaces | ButtonTaskDynamicServiceProvider |
| GroupCloudGettingStartedOpenMRUPlacesOrNavSlab | group | GroupModernOpenPlaces | ButtonTaskDynamicServiceProvider |
| GroupLocalGettingStartedOpenMRUPlacesOrNavSlab | group | GroupModernOpenPlaces | ButtonTaskDynamicServiceProvider |
| GroupRecentCloudPlaces | group | GroupModernOpenPlaces | ButtonTaskDynamicServiceProvider |
| GroupRecentLocalPlaces | group | GroupModernOpenPlaces | ButtonTaskDynamicServiceProvider |
| LoadingCloudServicesGroup | group | GroupModernOpenPlaces | ButtonTaskDynamicServiceProvider |
| CloudFixItHub | group | GroupModernOpenPlaces | ButtonTaskFixItHub |
| ButtonOpenBrowse | button | GroupModernOpenPlaces | ButtonTaskRecentDocuments > GroupRecentDocumentsNew |
| GroupRecentDocumentsNew | group | GroupModernOpenPlaces | ButtonTaskRecentDocuments |
| GroupSharedWithMeDocumentsNew | group | GroupModernOpenPlaces | ButtonTaskSharedWithMe |
| ButtonOpenBrowse | button | GroupModernOpenPlaces | GroupRecentDocumentsNew |
| ButtonCategoryRecentDocuments | category | GroupOpenPlaces |  |
| ButtonOpenBrowse | button | GroupOpenPlaces | ButtonCategoryRecentDocuments > ButtonTaskRecentDocuments |
| ButtonTaskDynamicServiceProvider | task | GroupOpenPlaces | ButtonCategoryRecentDocuments |
| ButtonTaskFixItHub | task | GroupOpenPlaces | ButtonCategoryRecentDocuments |
| ButtonTaskRecentDocuments | task | GroupOpenPlaces | ButtonCategoryRecentDocuments |
| ButtonTaskSharedWithMe | task | GroupOpenPlaces | ButtonCategoryRecentDocuments |
| FixItHub | group | GroupOpenPlaces | ButtonCategoryRecentDocuments > ButtonTaskFixItHub |
| GroupAddLocation | group | GroupOpenPlaces | ButtonCategoryRecentDocuments > ButtonTaskDynamicServiceProvider |
| GroupGettingStartedOpenMRUPlacesOrNavSlab | group | GroupOpenPlaces | ButtonCategoryRecentDocuments > ButtonTaskDynamicServiceProvider |
| GroupRecentDocuments | group | GroupOpenPlaces | ButtonCategoryRecentDocuments > ButtonTaskRecentDocuments |
| GroupRecentPlaces | group | GroupOpenPlaces | ButtonCategoryRecentDocuments > ButtonTaskDynamicServiceProvider |
| GroupRecoverUnsavedFiles | group | GroupOpenPlaces | ButtonCategoryRecentDocuments > ButtonTaskRecentDocuments |
| GroupSharedWithMeDocuments | group | GroupOpenPlaces | ButtonCategoryRecentDocuments > ButtonTaskSharedWithMe |
| LoadingServicesGroup | group | GroupOpenPlaces | ButtonCategoryRecentDocuments > ButtonTaskDynamicServiceProvider |
| SkyDriveUpsellGroup | group | GroupOpenPlaces | ButtonCategoryRecentDocuments > ButtonTaskDynamicServiceProvider |

### TabSave

| idMso | Type | Group | Parent |
|---|---|---|---|
| ModernSaveGroup | group |  |  |
| SaveGroup | taskFormGroup |  |  |
| AppGuardTrustPromotion | button | ModernSaveGroup |  |
| ButtonGroupItemSaveCloudServices | control | ModernSaveGroup |  |
| ButtonGroupItemSaveLocalServices | control | ModernSaveGroup |  |
| ButtonGroupsSave | control | ModernSaveGroup |  |
| ButtonTaskDynamicServiceProvider | task | ModernSaveGroup |  |
| ButtonTaskDynamicServiceProvider | control | ModernSaveGroup |  |
| CloudSkyDriveUpsellGroup | group | ModernSaveGroup |  |
| GroupAddLocationLocal | group | ModernSaveGroup |  |
| GroupDynamicSaveCloudServiceProvider | group | ModernSaveGroup |  |
| GroupDynamicSaveLocalServiceProvider | group | ModernSaveGroup |  |
| GroupDynamicSavePinnableCloudServiceProvider | group | ModernSaveGroup |  |
| GroupGettingStartedSaveAsMRUCloudPlacesOrNavSlab | group | ModernSaveGroup |  |
| GroupGettingStartedSaveAsMRULocalPlacesOrNavSlab | group | ModernSaveGroup |  |
| GroupPinnableCloudSaveAsAccessibility | group | ModernSaveGroup |  |
| GroupPinnableGettingStartedSaveAsMRUCloudPlacesOrNav | group | ModernSaveGroup |  |
| LoadingCloudServicesGroup | group | ModernSaveGroup |  |
| LocalSave | category | ModernSaveGroup |  |
| SaveCloudServices | category | ModernSaveGroup |  |
| SlabCloudSaveAsAccessibility | group | ModernSaveGroup |  |
| SlabLocalSaveAsAccessibility | group | ModernSaveGroup |  |
| TabSave | control | ModernSaveGroup |  |
| CloudSkyDriveUpsellGroup | group | ModernSaveGroup | ButtonTaskDynamicServiceProvider |
| GroupAddLocationLocal | group | ModernSaveGroup | ButtonTaskDynamicServiceProvider |
| GroupDynamicSaveCloudServiceProvider | group | ModernSaveGroup | ButtonTaskDynamicServiceProvider |
| GroupDynamicSaveLocalServiceProvider | group | ModernSaveGroup | ButtonTaskDynamicServiceProvider |
| GroupGettingStartedSaveAsMRUCloudPlacesOrNavSlab | group | ModernSaveGroup | ButtonTaskDynamicServiceProvider |
| GroupGettingStartedSaveAsMRULocalPlacesOrNavSlab | group | ModernSaveGroup | ButtonTaskDynamicServiceProvider |
| LoadingCloudServicesGroup | group | ModernSaveGroup | ButtonTaskDynamicServiceProvider |
| SlabCloudSaveAsAccessibility | group | ModernSaveGroup | ButtonTaskDynamicServiceProvider |
| SlabLocalSaveAsAccessibility | group | ModernSaveGroup | ButtonTaskDynamicServiceProvider |
| TabSave | control | ModernSaveGroup | ButtonTaskDynamicServiceProvider > GroupDynamicSaveCloudServiceProvider |
| TabSave | control | ModernSaveGroup | ButtonTaskDynamicServiceProvider > GroupDynamicSaveLocalServiceProvider |
| TabSave | control | ModernSaveGroup | GroupDynamicSaveCloudServiceProvider |
| TabSave | control | ModernSaveGroup | GroupDynamicSaveLocalServiceProvider |
| TabSave | control | ModernSaveGroup | GroupDynamicSavePinnableCloudServiceProvider |
| ButtonTaskDynamicServiceProvider | task | ModernSaveGroup | LocalSave |
| GroupAddLocationLocal | group | ModernSaveGroup | LocalSave > ButtonTaskDynamicServiceProvider |
| GroupDynamicSaveLocalServiceProvider | group | ModernSaveGroup | LocalSave > ButtonTaskDynamicServiceProvider |
| GroupGettingStartedSaveAsMRULocalPlacesOrNavSlab | group | ModernSaveGroup | LocalSave > ButtonTaskDynamicServiceProvider |
| SlabLocalSaveAsAccessibility | group | ModernSaveGroup | LocalSave > ButtonTaskDynamicServiceProvider |
| TabSave | control | ModernSaveGroup | LocalSave > ButtonTaskDynamicServiceProvider |
| AppGuardTrustPromotion | button | ModernSaveGroup | SaveCloudServices |
| ButtonTaskDynamicServiceProvider | control | ModernSaveGroup | SaveCloudServices |
| ButtonTaskDynamicServiceProvider | task | ModernSaveGroup | SaveCloudServices |
| CloudSkyDriveUpsellGroup | group | ModernSaveGroup | SaveCloudServices > ButtonTaskDynamicServiceProvider |
| GroupDynamicSaveCloudServiceProvider | group | ModernSaveGroup | SaveCloudServices > ButtonTaskDynamicServiceProvider |
| GroupGettingStartedSaveAsMRUCloudPlacesOrNavSlab | group | ModernSaveGroup | SaveCloudServices > ButtonTaskDynamicServiceProvider |
| LoadingCloudServicesGroup | group | ModernSaveGroup | SaveCloudServices > ButtonTaskDynamicServiceProvider |
| SlabCloudSaveAsAccessibility | group | ModernSaveGroup | SaveCloudServices > ButtonTaskDynamicServiceProvider |
| TabSave | control | ModernSaveGroup | SaveCloudServices > ButtonTaskDynamicServiceProvider |
| Save | category | SaveGroup |  |
| AppGuardTrustPromotion | button | SaveGroup | Save |
| ButtonTaskDynamicServiceProvider | task | SaveGroup | Save |
| GroupAddLocation | group | SaveGroup | Save > ButtonTaskDynamicServiceProvider |
| GroupDynamicServiceProvider | group | SaveGroup | Save > ButtonTaskDynamicServiceProvider |
| GroupGettingStartedSaveAsMRUPlacesOrNavSlab | group | SaveGroup | Save > ButtonTaskDynamicServiceProvider |
| LoadingServicesGroup | group | SaveGroup | Save > ButtonTaskDynamicServiceProvider |
| SkyDriveUpsellGroup | group | SaveGroup | Save > ButtonTaskDynamicServiceProvider |
| SlabSaveAsAccessibility | group | SaveGroup | Save > ButtonTaskDynamicServiceProvider |
| TabSave | control | SaveGroup | Save > ButtonTaskDynamicServiceProvider |

### TabShare

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupShare | taskFormGroup |  |  |
| Share | category | GroupShare |  |
| Workflow | category | GroupShare |  |
| BroadcastSlideShowBackstage | task | GroupShare | Share |
| FilePublishSlides | button | GroupShare | Share > FilePublishSlides |
| FilePublishSlides | task | GroupShare | Share |
| GroupBroadcast | group | GroupShare | Share > BroadcastSlideShowBackstage |
| GroupPublishSlides | group | GroupShare | Share > FilePublishSlides |
| GroupSendAsAttachment | group | GroupShare | Share > SendUsingEmail |
| GroupSendAsInternetFax | group | GroupShare | Share > SendUsingEmail |
| GroupSendAsLink | group | GroupShare | Share > SendUsingEmail |
| GroupSendAsPdf | group | GroupShare | Share > SendUsingEmail |
| GroupSendAsXps | group | GroupShare | Share > SendUsingEmail |
| GroupSendByInstantMessage | group | GroupShare | Share > SendByInstantMessage |
| GroupSendUsingEmail | group | GroupShare | Share > SendUsingEmail |
| SendByInstantMessage | task | GroupShare | Share |
| SendUsingEmail | task | GroupShare | Share |
| ShareWithPeopleFromSharePane | task | GroupShare | Share |
| SlabShareWithPeopleFromSharePane | group | GroupShare | Share > ShareWithPeopleFromSharePane |
| GroupWorkflowStart | group | GroupShare | Workflow > WorkflowStart |
| GroupWorkflowsUnavailable | group | GroupShare | Workflow > WorkflowsUnavailable |
| WorkflowStart | task | GroupShare | Workflow |
| WorkflowsUnavailable | task | GroupShare | Workflow |

### (ungrouped)

| idMso | Type |
|---|---|
| NoTcid | control |
| PlaceTabHome | tab |
| TabInfo | tab |
| TabOfficeStart | tab |
| TabRecent | tab |
| OfficeExtensionsGetAddinsButtonOnBackstageBelowOpenDivider | button |
| FileSave | button |
| TabSave | tab |
| MoveDocument | button |
| HistoryTab | button |
| TabPrint | tab |
| ShareDocument | button |
| TabShare | tab |
| TabPublish | tab |
| FileClose | button |
| TabHelp | tab |
| TabOfficeFeedback | tab |
| OfficeFeedback | button |
| OfficeFeedbackBackstage | button |
| ApplicationOptionsDialog | button |

## Quick Access Toolbar

Controls commonly added to the QAT by default or by users.

| idMso | Type |
|---|---|
| AutoSaveSwitch | toggleButton |
| FileNewDefault | button |
| FileOpenUsingBackstage | button |
| FilePrintQuick | button |
| FileSave | button |
| FileSendAsAttachment | button |
| PointerModeOptions | gallery |
| PrintPreviewAndPrint | button |
| RedoOrRepeat | button |
| SlideShowFromBeginning | button |
| Spelling | button |
| Undo | gallery |

## Not in the Ribbon

Commands that exist in PowerPoint but aren't placed on the ribbon or any menu by default; useful for QAT customization or assigning to custom controls.

| idMso | Type |
|---|---|
| About | button |
| AccessibilityChecker | button |
| AccessibilityHelp | button |
| ActionInsert | button |
| AddOffSlideTitle | button |
| AddSlideTitle | button |
| AdvancedFileProperties | button |
| AdvertisePublishAs | button |
| AlternativeText | button |
| AltTextPaneRibbon | toggleButton |
| AnimationAddGallery | gallery |
| AnimationCustom | toggleButton |
| AnimationCustomActionVerbDialog | button |
| AnimationCustomAddActionVerbDialog | button |
| AnimationCustomAddEmphasisDialog | button |
| AnimationCustomAddEntranceDialog | button |
| AnimationCustomAddExitDialog | button |
| AnimationCustomAddPathDialog | button |
| AnimationCustomEmphasisDialog | button |
| AnimationCustomEntranceDialog | button |
| AnimationCustomExitDialog | button |
| AnimationCustomPathDialog | button |
| AnimationGallery | gallery |
| AnimationTransitionGallery | gallery |
| AnimationTransitionSpeedGallery | dropDown |
| AppGuardTrustPromotion | button |
| ApplicationOptionsDialog | button |
| AudioInsert | button |
| AutoCorrect | button |
| BarcodeInsert | button |
| BaselineLower | button |
| BaselineRaise | button |
| BordersShadingDialog | button |
| BrightnessLess | button |
| BrightnessMore | button |
| BroadcastResume | button |
| BroadcastSlideShowBackstage | button |
| BulletsAndNumberingBulletsDialog | button |
| BulletsGallery | gallery |
| CDAudioPlayTrack | button |
| ChangeCaseToggle | button |
| CharacterFormattingReset | button |
| ChartShowData | button |
| CheckForUpdates | button |
| Clear | button |
| ClipArtInsert | toggleButton |
| Collaborate | toggleButton |
| CollaborateActivity | toggleButton |
| CollaborateComments | toggleButton |
| CollapseAll | button |
| CombineCharacters | toggleButton |
| CombineShapesMenu | menu |
| ContrastLess | button |
| ContrastMore | button |
| Copy | button |
| CreateHandoutsInWord | button |
| CreateHandoutsInWord | button |
| Cut | button |
| DocumentLocation | comboBox |
| DrawingCanvasExpand | button |
| DrawingCanvasFit | button |
| DrawingCanvasResize | button |
| DrawingCanvasScale | button |
| DuplicateSelectedSlides | button |
| EditSlideTitle | button |
| ExcelSpreadsheetInsert | button |
| ExchangeFolder | button |
| ExportToAnimatedGif | button |
| ExportToVideo | button |
| ExtensibilityExperimentation | button |
| EyedropperFillText | button |
| FileAddDigitalSignature | button |
| FileCheckIn | button |
| FileCheckOut | button |
| FileCheckOutDiscard | button |
| FileCompatibilityCheckerPowerPoint | button |
| FileDiscardCachedChanges | button |
| FileDocumentEncrypt | toggleButton |
| FileDocumentInspect | button |
| FileEmailAsPdfEmailAttachment | button |
| FileEmailAsXpsEmailAttachment | button |
| FileExit | button |
| FileInternetFax | button |
| FileLinksToFiles | button |
| FileMarkAsFinal | toggleButton |
| FileMarkAsReadOnlyRecommended | toggleButton |
| FileNew | button |
| FileNewDefault | button |
| FileOpen | button |
| FileOpenRecentFile | button |
| FileOpenUsingBackstage | button |
| FilePackageForCD | button |
| FilePermissionDoNotDistribute | toggleButton |
| FilePermissionDoNotDistribute | toggleButton |
| FilePermissionDoNotDistribute | toggleButton |
| FilePermissionRestrictAs | button |
| FilePermissionRestrictMenu | menu |
| FilePermissionUnrestricted | toggleButton |
| FilePermissionUnrestricted | toggleButton |
| FilePermissionUnrestricted | toggleButton |
| FilePermissionView | button |
| FilePrepareMenu | menu |
| FilePrint | button |
| FilePrintMenu | splitButton |
| FilePrintPreview | toggleButton |
| FilePrintQuick | button |
| FilePrintQuick | button |
| FileProperties | toggleButton |
| FilePublishSlides | button |
| FileSave | button |
| FileSaveACopy | button |
| FileSaveAs | button |
| FileSaveAs | button |
| FileSaveAsMenu | splitButton |
| FileSaveAsOtherFormats | button |
| FileSaveAsPdfOrXps | button |
| FileSaveAsPowerPoint97_2003 | button |
| FileSaveAsPowerPointOpenDocumentPresentation | button |
| FileSaveAsPowerPointPpsx | button |
| FileSaveAsPowerPointPptx | button |
| FileSaveToDocumentManagementServer | button |
| FileSendAsAttachment | button |
| FileSendAsAttachment | button |
| FileSendMenu | menu |
| FileServerTasksMenu | menu |
| FileStartWorkflow | button |
| FileVersionHistory | button |
| FileViewDigitalSignatures | toggleButton |
| FileWorkflowTasks | button |
| FindNext | button |
| FindTellMe | control |
| Font | comboBox |
| FontColorMoreColorsDialogPowerPoint | button |
| FontColorPicker | gallery |
| FontSize | comboBox |
| FontSizeDecrease | button |
| FontSizeIncrease | button |
| FormatPainter | control |
| GenerateAutoAltText | button |
| GoToProperty | button |
| GroupInsertBarcode | group |
| GroupOfficeInsider | button |
| GroupPermission | group |
| HideRibbon | toggleButton |
| HighlightingStop | button |
| HyperlinkCopy | button |
| HyperlinkEdit | button |
| HyperlinkOpen | button |
| HyperlinkRemove | button |
| InkingStart | button |
| InkToolsClose | button |
| Insert3DModelDefaultPlaceholder | button |
| InsertIconPlaceholder | button |
| InsertMovieDialog | button |
| InsertTab | button |
| LabelInsert | button |
| LeaveReader | button |
| LinkBreak | button |
| LinkChange | button |
| LinksUpdate | button |
| LockObject | button |
| MacroPlay | button |
| ManagePrivacy | button |
| MarkAsDecorative | button |
| MdiChildSystemMenu | menu |
| MenuAccessibility | splitButton |
| MenuPublish | menu |
| MinimizeRibbon | toggleButton |
| MovieFromClipOrganizerInsert | button |
| MovieFromFileInsert | button |
| MovieInsert | splitButton |
| NextPane | button |
| ObjectBringForward | button |
| ObjectBringForward | button |
| ObjectBringToFront | button |
| ObjectBringToFront | button |
| ObjectBringToFrontMenu | splitButton |
| ObjectFlipHorizontal | button |
| ObjectFlipVertical | button |
| ObjectFormatDialog | button |
| ObjectNudgeDown | button |
| ObjectNudgeLeft | button |
| ObjectNudgeRight | button |
| ObjectNudgeUp | button |
| ObjectRotateFree | button |
| ObjectRotateLeft90 | button |
| ObjectRotateRight90 | button |
| ObjectSendBackward | button |
| ObjectSendBackward | button |
| ObjectSendToBack | button |
| ObjectSendToBack | button |
| ObjectSendToBackMenu | splitButton |
| ObjectSetShapeDefaults | button |
| ObjectsGroup | button |
| ObjectSizeAndPositionDialog | button |
| ObjectsMultiSelect | button |
| ObjectsRegroup | button |
| ObjectsUngroup | button |
| OfficeExtensionsAppStore | button |
| OfficeExtensionsDialog | button |
| OfficeExtensionsFeaturedApp1 | button |
| OfficeExtensionsFeaturedApp2 | button |
| OfficeExtensionsFeaturedApp3 | button |
| OfficeExtensionsFeaturedApp4 | button |
| OfficeExtensionsFeaturedApp5 | button |
| OfficeExtensionsFeaturedApp6 | button |
| OfficeExtensionsGallery2 | gallery |
| OfficeExtensionsGetAddinsButtonOnBackstageBelowOpenDivider | button |
| OfficeExtensionsManageOtherAddins | button |
| OfficeFeedback | button |
| OfficeFeedbackBackstage | button |
| OleConvert | button |
| OpenOptionsAddIns | button |
| OpenOptionsAdvanced | button |
| OpenOptionsCustomization | button |
| OpenOptionsCustomizeRibbon | button |
| OpenOptionsEaseOfAcess | button |
| OpenOptionsEaseOfAcess | button |
| OpenOptionsExperimentSettings | button |
| OpenOptionsLanguage | button |
| OpenOptionsPPTTrustCenter | button |
| OpenOptionsSaving | button |
| OpenOptionsSetup | button |
| OpenOptionsSpelling | button |
| OpenOptionsTrustCenterSettings | button |
| OutlineCollapse | button |
| OutlineDemote | button |
| OutlineExpand | button |
| OutlineExpandAll | button |
| OutlineMoveDown | button |
| OutlineMoveUp | button |
| OutlinePromote | button |
| OutlineShowTextFormatting | toggleButton |
| OutlineThumbnailsShowHide | button |
| OutlookTaskCreate | button |
| Paste | button |
| PasteApplyStyle | button |
| PasteAsEmbedded | button |
| PasteAsHyperlink | button |
| PasteAsPicture | button |
| PasteAsSlide | toggleButton |
| PasteBitmap | button |
| PasteDestinationTheme | button |
| PasteDuplicate | button |
| PasteExcelChartDestinationTheme | button |
| PasteExcelChartSourceFormatting | button |
| PasteExcelTableDestinationTableStyle | button |
| PasteExcelTableSourceFormatting | button |
| PasteGif | button |
| PasteInk | button |
| PasteJpeg | button |
| PasteLinkedExcelChartDestinationTheme | button |
| PasteLinkedExcelChartSourceFormatting | button |
| PastePng | button |
| PasteSourceFormatting | button |
| PasteTextOnly | button |
| PickUpStyle | button |
| PictureArtisticEffectsReset | button |
| PictureBrightnessGallery | gallery |
| PictureColorReset | button |
| PictureContrastGallery | gallery |
| PictureCorrectionsDialog | button |
| PictureCorrectionsDialog | button |
| PictureCorrectionsReset | button |
| PictureInsertFromFilePowerPoint | button |
| PlaybackTipPlay | button |
| PointerModeOptions | gallery |
| PrintPreviewAndPrint | button |
| PrintPreviewAndPrint | button |
| PropertySheet | button |
| QuickAccessToolbarCustomization | button |
| ReadingOrderPane | toggleButton |
| ReadingOrderPane | toggleButton |
| Redo | gallery |
| RedoOrRepeat | button |
| RefreshServerFile | button |
| ReopenFromServer | button |
| ReopenServerFile | button |
| ReuseSlides | toggleButton |
| ReuseSlidesFromSelection | control |
| ReviewEditComment | button |
| ReviewProtectPresentationMenu | menu |
| ReviewProtectPresentationMenu | menu |
| RibbonCustomization | button |
| SaveAndReview | button |
| SetAsSlideTitle | button |
| ShadowNudgeDownClassic | button |
| ShadowNudgeLeftClassic | button |
| ShadowNudgeRightClassic | button |
| ShadowNudgeUpClassic | button |
| ShadowOnOrOffClassic | button |
| ShapeArc | toggleButton |
| ShapeConvertToFreeform | button |
| ShapeDownArrow | toggleButton |
| ShapeElbowConnector | toggleButton |
| ShapeElbowConnectorArrow | toggleButton |
| ShapeIsoscelesTriangle | toggleButton |
| ShapeLeftBrace | toggleButton |
| ShapeOval | toggleButton |
| ShapeRectangle | toggleButton |
| ShapeRightArrow | toggleButton |
| ShapeRightBrace | toggleButton |
| ShapeRoundedRectangle | toggleButton |
| ShapeRoundedRectangularCallout | toggleButton |
| ShapesCombine | button |
| ShapesCombine | button |
| ShapesFragment | button |
| ShapesFragment | button |
| ShapesInsertGallery | gallery |
| ShapesIntersect | button |
| ShapesIntersect | button |
| ShapesMoreShapes | button |
| ShapesSubtract | button |
| ShapesSubtract | button |
| ShapeStar | toggleButton |
| ShapeStraightConnector | toggleButton |
| ShapeStraightConnectorArrow | toggleButton |
| ShapesUnion | button |
| ShapesUnion | button |
| SlideBackgroundFormatDialog | button |
| SlideHide | toggleButton |
| SlideLayoutGallery | gallery |
| SlideNewGallery | gallery |
| SlidesFromOutline | button |
| SlideShowCustom | button |
| SlideShowFromBeginning | button |
| SlideShowFromCurrent | button |
| SlideShowInAWindow | button |
| SlideShowNextSlide | button |
| SlideShowPreviousSlide | button |
| SlideShowResolutionGallery | dropDown |
| SlideShowResumeShow | button |
| SlidesReuseSlides | toggleButton |
| SmartLookup | control |
| SnapToGrid | toggleButton |
| SnapToShapes | toggleButton |
| SoundInsertFromClipOrganizer | button |
| SoundInsertFromFile | button |
| SoundInsertMenu | splitButton |
| SoundMaximumFileSize | control |
| SoundRecord | button |
| Spelling | button |
| Subscript | toggleButton |
| Superscript | toggleButton |
| TableDrawTable | toggleButton |
| TableDrawTable | toggleButton |
| TableInsert | button |
| TableInsertDialog | button |
| TableInsertGallery | gallery |
| TextBoxInsert | toggleButton |
| TextBoxInsertVertical | toggleButton |
| TextHighlightColorPickerLicensed | gallery |
| TransitionByObject | button |
| Undo | gallery |
| UnlockObject | button |
| UpgradeDocument | button |
| UpgradePresentation | button |
| VideoInsert | button |
| VideoInsertFromOnline | button |
| ViewFullScreenView | button |
| ViewMessageBar | checkBox |
| ViewOutlineView | toggleButton |
| ViewSlideMasterView | toggleButton |
| ViewSlideShowView | button |
| ViewSlideSorterView | toggleButton |
| ViewSlideView | toggleButton |
| WebGoBack | button |
| WebGoForward | button |
| WebOptionsDialog | button |
| WebPagePreview | button |
| WhatsNewRecentUpdates | button |
| WindowClose | button |
| WindowFitToPage | button |
| WindowMinimize | button |
| WindowRestore | button |
| WordArtInsertGallery | gallery |
| WordArtVerticalText | button |
| ZoomClassic | gallery |

