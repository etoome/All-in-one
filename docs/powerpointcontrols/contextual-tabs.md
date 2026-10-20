# PowerPoint Ribbon Controls — Contextual Tool Tabs

idMso identifiers for controls on contextual tool tabs (e.g. Picture Tools, Chart Tools) that appear only when a relevant object is selected. See [README.md](README.md) for how to use these tables.

## TabSet3DModelTools

### Tab3DModelToolsFormat

| idMso | Type | Group | Parent |
|---|---|---|---|
| Group3DModelPlay | group |  |  |
| Group3DModelSize | group |  |  |
| Group3DModelStyles | group |  |  |
| GroupAdjust3DModel | group |  |  |
| GroupAltText | group |  |  |
| GroupArrange | group |  |  |
| _3DModelPlay | button | Group3DModelPlay |  |
| _3DModelSceneGallery | gallery | Group3DModelPlay |  |
| AdvancedEdit3DModel | toggleButton | Group3DModelSize |  |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | Group3DModelSize |  |
| ShapeHeight | control | Group3DModelSize |  |
| ShapeWidth | control | Group3DModelSize |  |
| FormatDialog3DModel | button (dialogBoxLauncher) | Group3DModelStyles |  |
| Gallery3DModelViewPresets | gallery | Group3DModelStyles |  |
| Insert3DModelDropdown | splitButton | GroupAdjust3DModel |  |
| Insert3DModelFallback | button | GroupAdjust3DModel |  |
| Reset3DModelSplitButton | splitButton | GroupAdjust3DModel |  |
| Insert3DModelDefault | button | GroupAdjust3DModel | Insert3DModelDropdown |
| Insert3DModelFromFile | button | GroupAdjust3DModel | Insert3DModelDropdown |
| Insert3DModelFromFileConsumer | button | GroupAdjust3DModel | Insert3DModelDropdown |
| Insert3DModelFromOnline | button | GroupAdjust3DModel | Insert3DModelDropdown |
| Insert3DModelFromOnlineConsumer | button | GroupAdjust3DModel | Insert3DModelDropdown |
| Reset3DModel | button | GroupAdjust3DModel | Reset3DModelSplitButton |
| Reset3DModelAndSize | button | GroupAdjust3DModel | Reset3DModelSplitButton |
| AltTextPaneRibbon | toggleButton | GroupAltText |  |
| ObjectAlignMenu | menu | GroupArrange |  |
| ObjectBringForwardMenu | splitButton | GroupArrange |  |
| ObjectSendBackwardMenu | splitButton | GroupArrange |  |
| ObjectsGroupMenu | menu | GroupArrange |  |
| SelectionPane | toggleButton | GroupArrange |  |
| AlignDistributeHorizontally | button | GroupArrange | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrange | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrange | ObjectBringForwardMenu |
| ObjectSendBackward | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsGroupMenu |

### (tab set definition)

| idMso | Type |
|---|---|
| Tab3DModelToolsFormat | tab |

## TabSetAccessibleAuthoring

### TabAccessibleAuthoring

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupAccessibleAuthoringResources | group |  |  |
| GroupAccessibleAuthoringReview | group |  |  |
| GroupCaptionsAndSubtitles | group |  |  |
| GroupColorAndContrast | group |  |  |
| GroupScreenReader | group |  |  |
| AccessibilityHelp | button | GroupAccessibleAuthoringResources |  |
| AccessibilityChecker | button | GroupAccessibleAuthoringReview |  |
| ClosedCaptionSplitDropdown | splitButton | GroupCaptionsAndSubtitles |  |
| LauncherAccessibleAuthoringCaptionsAndSubtitles | button (dialogBoxLauncher) | GroupCaptionsAndSubtitles |  |
| SubtitleSettingsMenu | menu | GroupCaptionsAndSubtitles |  |
| UseSubtitles | checkBox | GroupCaptionsAndSubtitles |  |
| InsertClosedCaption | button | GroupCaptionsAndSubtitles | ClosedCaptionSplitDropdown |
| RemoveClosedCaption | button | GroupCaptionsAndSubtitles | ClosedCaptionSplitDropdown |
| SubtitleMoreSettings | button | GroupCaptionsAndSubtitles | SubtitleSettingsMenu |
| SubtitlePositionAboveSlide | toggleButton | GroupCaptionsAndSubtitles | SubtitleSettingsMenu |
| SubtitlePositionBelowSlide | toggleButton | GroupCaptionsAndSubtitles | SubtitleSettingsMenu |
| SubtitlePositionBottomOverlayed | toggleButton | GroupCaptionsAndSubtitles | SubtitleSettingsMenu |
| SubtitlePositionTopOverlayed | toggleButton | GroupCaptionsAndSubtitles | SubtitleSettingsMenu |
| SubtitlesDisplayLanguage | gallery | GroupCaptionsAndSubtitles | SubtitleSettingsMenu |
| SubtitlesMicrophoneSettings | gallery | GroupCaptionsAndSubtitles | SubtitleSettingsMenu |
| SubtitlesSpokenLanguage | gallery | GroupCaptionsAndSubtitles | SubtitleSettingsMenu |
| FontColorPicker | gallery | GroupColorAndContrast |  |
| InspectWithoutColor | toggleButton | GroupColorAndContrast |  |
| LauncherAccessibleAuthoringColorAndContrast | button (dialogBoxLauncher) | GroupColorAndContrast |  |
| ShapeFillColorPicker | gallery | GroupColorAndContrast |  |
| ShapeOutlineColorPicker | gallery | GroupColorAndContrast |  |
| TextHighlightColorPickerLicensed | gallery | GroupColorAndContrast |  |
| EyedropperFillText | button | GroupColorAndContrast | FontColorPicker |
| FontColorMoreColorsDialogPowerPoint | button | GroupColorAndContrast | FontColorPicker |
| EyedropperFill | button | GroupColorAndContrast | ShapeFillColorPicker |
| GradientGallery | gallery | GroupColorAndContrast | ShapeFillColorPicker |
| MoreTextureOptions | button | GroupColorAndContrast | ShapeFillColorPicker > ShapeFillTextureGallery |
| ObjectFillMoreColorsDialog | button | GroupColorAndContrast | ShapeFillColorPicker |
| ObjectPictureFill | button | GroupColorAndContrast | ShapeFillColorPicker |
| ShapeFillMoreGradientsDialog | button | GroupColorAndContrast | ShapeFillColorPicker > GradientGallery |
| ShapeFillTextureGallery | gallery | GroupColorAndContrast | ShapeFillColorPicker |
| ArrowsMore | button | GroupColorAndContrast | ShapeOutlineColorPicker > ArrowStyleGallery |
| ArrowStyleGallery | gallery | GroupColorAndContrast | ShapeOutlineColorPicker |
| EyedropperOutline | button | GroupColorAndContrast | ShapeOutlineColorPicker |
| GallerySketchyShapes | gallery | GroupColorAndContrast | ShapeOutlineColorPicker |
| LineStylesDialog | button | GroupColorAndContrast | ShapeOutlineColorPicker > OutlineWeightGallery |
| LineStylesDialog | button | GroupColorAndContrast | ShapeOutlineColorPicker > OutlineDashesGallery |
| MoreLines2 | button | GroupColorAndContrast | ShapeOutlineColorPicker > GallerySketchyShapes |
| ObjectBorderOutlineColorMoreColorsDialog | button | GroupColorAndContrast | ShapeOutlineColorPicker |
| OutlineDashesGallery | gallery | GroupColorAndContrast | ShapeOutlineColorPicker |
| OutlineWeightGallery | gallery | GroupColorAndContrast | ShapeOutlineColorPicker |
| HighlightingStop | button | GroupColorAndContrast | TextHighlightColorPickerLicensed |
| AltTextPaneRibbon | toggleButton | GroupScreenReader |  |
| DecorativeToggleButton | toggleButton | GroupScreenReader |  |
| DropdownSlideTitle | splitButton | GroupScreenReader |  |
| EditHyperlinkText | button | GroupScreenReader |  |
| InsertHeaderRowSplitDropdown | splitButton | GroupScreenReader |  |
| LauncherAccessibleAuthoringScreenReader | button (dialogBoxLauncher) | GroupScreenReader |  |
| ObjectsGroupMenu | menu | GroupScreenReader |  |
| ReadingOrderPane | toggleButton | GroupScreenReader |  |
| Spelling | button | GroupScreenReader |  |
| AddOffSlideTitle | button | GroupScreenReader | DropdownSlideTitle |
| AddSlideTitle | button | GroupScreenReader | DropdownSlideTitle |
| EditSlideTitle | button | GroupScreenReader | DropdownSlideTitle |
| SetAsSlideTitle | button | GroupScreenReader | DropdownSlideTitle |
| SlideTitleDefault | button | GroupScreenReader | DropdownSlideTitle |
| InsertHeaderColumn | button | GroupScreenReader | InsertHeaderRowSplitDropdown |
| InsertHeaderRow | button | GroupScreenReader | InsertHeaderRowSplitDropdown |
| TableStructureFirstColToggleButton | toggleButton | GroupScreenReader | InsertHeaderRowSplitDropdown |
| TableStructureFirstRowToggleButton | toggleButton | GroupScreenReader | InsertHeaderRowSplitDropdown |
| ObjectsGroup | button | GroupScreenReader | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupScreenReader | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupScreenReader | ObjectsGroupMenu |

### (tab set definition)

| idMso | Type |
|---|---|
| TabAccessibleAuthoring | tab |

## TabSetAudioTools

### TabAudioToolsEdit

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupAudioBookmark | group |  |  |
| GroupAudioEditing | group |  |  |
| GroupAudioOptions | group |  |  |
| GroupAudioStyles | group |  |  |
| GroupClosedCaptions | group |  |  |
| GroupMediaPreview | group |  |  |
| GroupSaveMedia | group |  |  |
| AudioBookmarkAdd | button | GroupAudioBookmark |  |
| AudioBookmarkRemove | button | GroupAudioBookmark |  |
| AudioFadeInTime | control | GroupAudioEditing |  |
| AudioFadeOutTime | control | GroupAudioEditing |  |
| AudioToolsTrim | button | GroupAudioEditing |  |
| FadeDurationLabelAudio | labelControl | GroupAudioEditing |  |
| AudioStartGallery | dropDown | GroupAudioOptions |  |
| AudioVolumeGallery | gallery | GroupAudioOptions |  |
| MediaClipLoopUntilStopped | checkBox | GroupAudioOptions |  |
| MediaClipPlayAcrossSlides | checkBox | GroupAudioOptions |  |
| MediaClipToolsHideDuringShow | checkBox | GroupAudioOptions |  |
| MovieRewindAfterPlaying | checkBox | GroupAudioOptions |  |
| NoAudioStyle | toggleButton | GroupAudioStyles |  |
| PlayInBackground | toggleButton | GroupAudioStyles |  |
| ClosedCaptionSplitDropdown | splitButton | GroupClosedCaptions |  |
| InsertClosedCaption | button | GroupClosedCaptions | ClosedCaptionSplitDropdown |
| RemoveClosedCaption | button | GroupClosedCaptions | ClosedCaptionSplitDropdown |
| MediaPlayPreview | button | GroupMediaPreview |  |
| ObjectSaveMedia | button | GroupSaveMedia |  |

### TabAudioToolsFormat

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupArrange | group |  |  |
| GroupAudioToolsAdjust | group |  |  |
| GroupPictureSize | group |  |  |
| GroupPictureStyles | group |  |  |
| ObjectAlignMenu | menu | GroupArrange |  |
| ObjectBringForwardMenu | splitButton | GroupArrange |  |
| ObjectRotateGallery | gallery | GroupArrange |  |
| ObjectsArrangeMenu | menu | GroupArrange |  |
| ObjectSendBackwardMenu | splitButton | GroupArrange |  |
| ObjectsGroupMenu | menu | GroupArrange |  |
| SelectionPane | toggleButton | GroupArrange |  |
| AlignDistributeHorizontally | button | GroupArrange | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrange | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrange | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectRotateGallery |
| AlignDistributeHorizontally | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectAlignMenu | menu | GroupArrange | ObjectsArrangeMenu |
| ObjectBringForward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectBringToFront | button | GroupArrange | ObjectsArrangeMenu |
| ObjectRotateGallery | gallery | GroupArrange | ObjectsArrangeMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectsArrangeMenu > ObjectRotateGallery |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectSendBackward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectSendToBack | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsGroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsArrangeMenu |
| SelectionPane | toggleButton | GroupArrange | ObjectsArrangeMenu |
| ObjectSendBackward | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsGroupMenu |
| PictureArtisticEffectsGallery | gallery | GroupAudioToolsAdjust |  |
| PictureBackgroundRemoval | toggleButton | GroupAudioToolsAdjust |  |
| PictureChange | button | GroupAudioToolsAdjust |  |
| PictureChangeMenu | menu | GroupAudioToolsAdjust |  |
| PictureColorMenu | menu | GroupAudioToolsAdjust |  |
| PictureCorrectionsMenu | menu | GroupAudioToolsAdjust |  |
| PictureResetSplitButton | splitButton | GroupAudioToolsAdjust |  |
| PicturesCompress | button | GroupAudioToolsAdjust |  |
| ArtisticEffectsDialog | button | GroupAudioToolsAdjust | PictureArtisticEffectsGallery |
| ChangeIcon | button | GroupAudioToolsAdjust | PictureChangeMenu |
| PictureChangeFromClipboard | button | GroupAudioToolsAdjust | PictureChangeMenu |
| PictureChangeFromFile | button | GroupAudioToolsAdjust | PictureChangeMenu |
| PictureChangeFromM365 | button | GroupAudioToolsAdjust | PictureChangeMenu |
| PictureChangeFromMobile | button | GroupAudioToolsAdjust | PictureChangeMenu |
| PictureChangeFromOnline | button | GroupAudioToolsAdjust | PictureChangeMenu |
| EyedropperRecolor | button | GroupAudioToolsAdjust | PictureColorMenu > RecolorColorPicker |
| PictureColorDialog | button | GroupAudioToolsAdjust | PictureColorMenu |
| PictureColorTempertatureGallery | gallery | GroupAudioToolsAdjust | PictureColorMenu |
| PictureRecolorGallery | gallery | GroupAudioToolsAdjust | PictureColorMenu |
| PictureRecolorMoreColorsDialog | button | GroupAudioToolsAdjust | PictureColorMenu > RecolorColorPicker |
| PictureSaturationGallery | gallery | GroupAudioToolsAdjust | PictureColorMenu |
| PictureSetTransparentColor | toggleButton | GroupAudioToolsAdjust | PictureColorMenu |
| RecolorColorPicker | gallery | GroupAudioToolsAdjust | PictureColorMenu |
| PictureBrightnessAndContrastGallery | gallery | GroupAudioToolsAdjust | PictureCorrectionsMenu |
| PictureCorrectionsDialog | button | GroupAudioToolsAdjust | PictureCorrectionsMenu |
| PictureSharpenSoftenGallery | gallery | GroupAudioToolsAdjust | PictureCorrectionsMenu |
| PictureReset | button | GroupAudioToolsAdjust | PictureResetSplitButton |
| PictureResetAndSize | button | GroupAudioToolsAdjust | PictureResetSplitButton |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | GroupPictureSize |  |
| PictureCropTools | splitButton | GroupPictureSize |  |
| ShapeHeight | control | GroupPictureSize |  |
| ShapeWidth | control | GroupPictureSize |  |
| PictureCrop | toggleButton | GroupPictureSize | PictureCropTools |
| PictureCropAspectRatio16To10 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio16To9 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio1To1 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio2To3 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio3To2 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio3To4 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio3To5 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio4To3 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio4To5 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio5To3 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio5To4 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatioMenu | menu | GroupPictureSize | PictureCropTools |
| PictureFillCrop | button | GroupPictureSize | PictureCropTools |
| PictureFitCrop | button | GroupPictureSize | PictureCropTools |
| PictureShapeGallery | gallery | GroupPictureSize | PictureCropTools |
| OutlineColorPicker | gallery | GroupPictureStyles |  |
| PictureEffectsMenu | menu | GroupPictureStyles |  |
| PictureFormatDialog | button (dialogBoxLauncher) | GroupPictureStyles |  |
| PicturesConvertToSmartArt | gallery | GroupPictureStyles |  |
| PictureStylesGallery | gallery | GroupPictureStyles |  |
| EyedropperOutline | button | GroupPictureStyles | OutlineColorPicker |
| GallerySketchyShapes | gallery | GroupPictureStyles | OutlineColorPicker |
| LineStylesDialog | button | GroupPictureStyles | OutlineColorPicker > OutlineDashesGallery |
| LineStylesDialog | button | GroupPictureStyles | OutlineColorPicker > OutlineWeightGallery |
| MoreLines2 | button | GroupPictureStyles | OutlineColorPicker > GallerySketchyShapes |
| ObjectBorderOutlineColorMoreColorsDialog | button | GroupPictureStyles | OutlineColorPicker |
| OutlineDashesGallery | gallery | GroupPictureStyles | OutlineColorPicker |
| OutlineWeightGallery | gallery | GroupPictureStyles | OutlineColorPicker |
| _3DBevelOptionsDialog | button | GroupPictureStyles | PictureEffectsMenu > _3DBevelPictureTopGallery |
| _3DBevelOptionsDialog | button | GroupPictureStyles | PictureEffectsMenu > PictureEffectsPresetGallery |
| _3DBevelPictureTopGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| _3DRotationOptionsDialog | button | GroupPictureStyles | PictureEffectsMenu > PictureRotationGallery |
| EyedropperGlow | button | GroupPictureStyles | PictureEffectsMenu > PictureEffectsGlowGallery |
| GlowColorMoreColorsDialog | button | GroupPictureStyles | PictureEffectsMenu > PictureEffectsGlowGallery |
| GlowColorPicker | gallery | GroupPictureStyles | PictureEffectsMenu > PictureEffectsGlowGallery |
| GlowsMoreOptions | button | GroupPictureStyles | PictureEffectsMenu > PictureEffectsGlowGallery |
| PictureEffectsGlowGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| PictureEffectsPresetGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| PictureEffectsShadowGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| PictureEffectsSoftEdgesGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| PictureReflectionGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| PictureRotationGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| ReflectionsMoreOptions | button | GroupPictureStyles | PictureEffectsMenu > PictureReflectionGallery |
| ShadowOptionsDialog | button | GroupPictureStyles | PictureEffectsMenu > PictureEffectsShadowGallery |
| SoftEdgesMoreOptions | button | GroupPictureStyles | PictureEffectsMenu > PictureEffectsSoftEdgesGallery |

### (tab set definition)

| idMso | Type |
|---|---|
| TabAudioToolsFormat | tab |
| TabAudioToolsEdit | tab |

## TabSetCameoTools

### TabDesignCameo

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupAltText | group |  |  |
| GroupArrange | group |  |  |
| GroupCameoSize | group |  |  |
| GroupCameoStyles | group |  |  |
| GroupChunkCameoCamera | group |  |  |
| AltTextPaneRibbon | toggleButton | GroupAltText |  |
| ObjectAlignMenu | menu | GroupArrange |  |
| ObjectBringForwardMenu | splitButton | GroupArrange |  |
| ObjectRotateGallery | gallery | GroupArrange |  |
| ObjectsArrangeMenu | menu | GroupArrange |  |
| ObjectSendBackwardMenu | splitButton | GroupArrange |  |
| ObjectsGroupMenu | menu | GroupArrange |  |
| SelectionPane | toggleButton | GroupArrange |  |
| AlignDistributeHorizontally | button | GroupArrange | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrange | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrange | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectRotateGallery |
| AlignDistributeHorizontally | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectAlignMenu | menu | GroupArrange | ObjectsArrangeMenu |
| ObjectBringForward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectBringToFront | button | GroupArrange | ObjectsArrangeMenu |
| ObjectRotateGallery | gallery | GroupArrange | ObjectsArrangeMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectsArrangeMenu > ObjectRotateGallery |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectSendBackward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectSendToBack | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsGroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsArrangeMenu |
| SelectionPane | toggleButton | GroupArrange | ObjectsArrangeMenu |
| ObjectSendBackward | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsGroupMenu |
| CameoCrop | toggleButton | GroupCameoSize |  |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | GroupCameoSize |  |
| SpinnerCameoHeight | control | GroupCameoSize |  |
| SpinnerCameoWidth | control | GroupCameoSize |  |
| CameoBorderGallery | gallery | GroupCameoStyles |  |
| CameoEdgeEffectsGallery | menu | GroupCameoStyles |  |
| CameoShapeGallery | gallery | GroupCameoStyles |  |
| CameoStylesGallery | gallery | GroupCameoStyles |  |
| CopyCameoAllSlides | button | GroupCameoStyles |  |
| ObjectFormatDialog | button (dialogBoxLauncher) | GroupCameoStyles |  |
| EyedropperOutline | button | GroupCameoStyles | CameoBorderGallery |
| LineStylesDialog | button | GroupCameoStyles | CameoBorderGallery > OutlineWeightGallery |
| LineStylesDialog | button | GroupCameoStyles | CameoBorderGallery > OutlineDashesGallery |
| ObjectBorderOutlineColorMoreColorsDialog | button | GroupCameoStyles | CameoBorderGallery |
| OutlineDashesGallery | gallery | GroupCameoStyles | CameoBorderGallery |
| OutlineWeightGallery | gallery | GroupCameoStyles | CameoBorderGallery |
| _3DBevelOptionsDialog | button | GroupCameoStyles | CameoEdgeEffectsGallery > PictureEffectsPresetGallery |
| _3DBevelOptionsDialog | button | GroupCameoStyles | CameoEdgeEffectsGallery > _3DBevelPictureTopGallery |
| _3DBevelPictureTopGallery | gallery | GroupCameoStyles | CameoEdgeEffectsGallery |
| _3DRotationOptionsDialog | button | GroupCameoStyles | CameoEdgeEffectsGallery > PictureRotationGallery |
| EyedropperGlow | button | GroupCameoStyles | CameoEdgeEffectsGallery > PictureEffectsGlowGallery |
| GlowColorMoreColorsDialog | button | GroupCameoStyles | CameoEdgeEffectsGallery > PictureEffectsGlowGallery |
| GlowColorPicker | gallery | GroupCameoStyles | CameoEdgeEffectsGallery > PictureEffectsGlowGallery |
| GlowsMoreOptions | button | GroupCameoStyles | CameoEdgeEffectsGallery > PictureEffectsGlowGallery |
| PictureEffectsGlowGallery | gallery | GroupCameoStyles | CameoEdgeEffectsGallery |
| PictureEffectsPresetGallery | gallery | GroupCameoStyles | CameoEdgeEffectsGallery |
| PictureEffectsShadowGallery | gallery | GroupCameoStyles | CameoEdgeEffectsGallery |
| PictureEffectsSoftEdgesGallery | gallery | GroupCameoStyles | CameoEdgeEffectsGallery |
| PictureReflectionGallery | gallery | GroupCameoStyles | CameoEdgeEffectsGallery |
| PictureRotationGallery | gallery | GroupCameoStyles | CameoEdgeEffectsGallery |
| ReflectionsMoreOptions | button | GroupCameoStyles | CameoEdgeEffectsGallery > PictureReflectionGallery |
| ShadowOptionsDialog | button | GroupCameoStyles | CameoEdgeEffectsGallery > PictureEffectsShadowGallery |
| SoftEdgesMoreOptions | button | GroupCameoStyles | CameoEdgeEffectsGallery > PictureEffectsSoftEdgesGallery |
| DropdownCameoTogglePreviewState | splitButton | GroupChunkCameoCamera |  |
| CameoEnablePreview | button | GroupChunkCameoCamera | DropdownCameoTogglePreviewState |
| CameoSourceGallery | gallery | GroupChunkCameoCamera | DropdownCameoTogglePreviewState |

### (tab set definition)

| idMso | Type |
|---|---|
| TabDesignCameo | tab |

## TabSetCDAudioTools

### TabCDAudioToolsOptions

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupArrange | group |  |  |
| GroupCDAudioSetup | group |  |  |
| GroupPlay | group |  |  |
| GroupSize | group |  |  |
| ObjectAlignMenu | menu | GroupArrange |  |
| ObjectBringForwardMenu | splitButton | GroupArrange |  |
| ObjectRotateGallery | gallery | GroupArrange |  |
| ObjectsArrangeMenu | menu | GroupArrange |  |
| ObjectSendBackwardMenu | splitButton | GroupArrange |  |
| ObjectsGroupMenu | menu | GroupArrange |  |
| SelectionPane | toggleButton | GroupArrange |  |
| AlignDistributeHorizontally | button | GroupArrange | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrange | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrange | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectRotateGallery |
| AlignDistributeHorizontally | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectAlignMenu | menu | GroupArrange | ObjectsArrangeMenu |
| ObjectBringForward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectBringToFront | button | GroupArrange | ObjectsArrangeMenu |
| ObjectRotateGallery | gallery | GroupArrange | ObjectsArrangeMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectsArrangeMenu > ObjectRotateGallery |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectSendBackward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectSendToBack | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsGroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsArrangeMenu |
| SelectionPane | toggleButton | GroupArrange | ObjectsArrangeMenu |
| ObjectSendBackward | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsGroupMenu |
| CDAudioPlayTrackAutomatically | dropDown | GroupCDAudioSetup |  |
| CDAudioStartPlayingLabel | labelControl | GroupCDAudioSetup |  |
| CDAudioStartTime | control | GroupCDAudioSetup |  |
| CDAudioStartTrack | control | GroupCDAudioSetup |  |
| CDAudioStopPlayingLabel | labelControl | GroupCDAudioSetup |  |
| CDAudioStopTime | control | GroupCDAudioSetup |  |
| CDAudioStopTrack | control | GroupCDAudioSetup |  |
| MediaClipLoopUntilStoppedAudio | checkBox | GroupCDAudioSetup |  |
| MediaClipToolsHideDuringShowAudio | checkBox | GroupCDAudioSetup |  |
| ObjectEditDialog | button (dialogBoxLauncher) | GroupCDAudioSetup |  |
| SlideShowVolume | gallery | GroupCDAudioSetup |  |
| MoviePlay | button | GroupPlay |  |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | GroupSize |  |
| ShapeHeight | control | GroupSize |  |
| ShapeWidth | control | GroupSize |  |

### (tab set definition)

| idMso | Type |
|---|---|
| TabCDAudioToolsOptions | tab |

## TabSetChartTools

### TabChartToolsDesign

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupChartData | group |  |  |
| GroupChartStyles | group |  |  |
| ChartEditDataMenu | splitButton | GroupChartData |  |
| ChartEditDataSource | button | GroupChartData |  |
| ChartRefresh | button | GroupChartData |  |
| ChartSwitchRowColumn | button | GroupChartData |  |
| ChartShowDataContextualMenu | button | GroupChartData | ChartEditDataMenu |
| ChartShowDataGrid | button | GroupChartData | ChartEditDataMenu |
| ChartColorsGallery | gallery | GroupChartStyles |  |
| ChartStylesGallery | gallery | GroupChartStyles |  |

### TabChartToolsDesignNew

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupChartData | group |  |  |
| GroupChartLayouts | group |  |  |
| GroupChartStyles | group |  |  |
| GroupChartType | group |  |  |
| ChartEditDataMenu | splitButton | GroupChartData |  |
| ChartEditDataSource | button | GroupChartData |  |
| ChartRefresh | button | GroupChartData |  |
| ChartSwitchRowColumn | button | GroupChartData |  |
| ChartShowDataContextualMenu | button | GroupChartData | ChartEditDataMenu |
| ChartShowDataGrid | button | GroupChartData | ChartEditDataMenu |
| AddChartElementMenu | menu | GroupChartLayouts |  |
| ChartLayoutGallery | gallery | GroupChartLayouts |  |
| ChartAxesGallery | gallery | GroupChartLayouts | AddChartElementMenu |
| ChartAxesOptionsDialog | button | GroupChartLayouts | AddChartElementMenu > ChartAxesGallery |
| ChartAxesTitlesOptionsDialog | button | GroupChartLayouts | AddChartElementMenu > ChartAxisTitlesGallery |
| ChartAxisTitlesGallery | gallery | GroupChartLayouts | AddChartElementMenu |
| ChartDataLabel | gallery | GroupChartLayouts | AddChartElementMenu |
| ChartDataLabelDialog | button | GroupChartLayouts | AddChartElementMenu > ChartDataLabel |
| ChartDataTable | gallery | GroupChartLayouts | AddChartElementMenu |
| ChartDataTableOptionsDialog | button | GroupChartLayouts | AddChartElementMenu > ChartDataTable |
| ChartErrorBars | gallery | GroupChartLayouts | AddChartElementMenu |
| ChartErrorBarsOptionsDialog | button | GroupChartLayouts | AddChartElementMenu > ChartErrorBars |
| ChartGridlineOptionsDialog | button | GroupChartLayouts | AddChartElementMenu > ChartGridlinesGallery |
| ChartGridlinesGallery | gallery | GroupChartLayouts | AddChartElementMenu |
| ChartLegend | gallery | GroupChartLayouts | AddChartElementMenu |
| ChartLegendOptionsDialogDialog | button | GroupChartLayouts | AddChartElementMenu > ChartLegend |
| ChartLines | gallery | GroupChartLayouts | AddChartElementMenu |
| ChartTitle | gallery | GroupChartLayouts | AddChartElementMenu |
| ChartTitleOptionsDialog | button | GroupChartLayouts | AddChartElementMenu > ChartTitle |
| ChartTrendline | gallery | GroupChartLayouts | AddChartElementMenu |
| ChartTrendlineOptionsDialog | button | GroupChartLayouts | AddChartElementMenu > ChartTrendline |
| ChartUpDownBars | gallery | GroupChartLayouts | AddChartElementMenu |
| ChartUpDownBarsOptionsDialog | button | GroupChartLayouts | AddChartElementMenu > ChartUpDownBars |
| ChartColorsGallery | gallery | GroupChartStyles |  |
| ChartStylesGallery | gallery | GroupChartStyles |  |
| ChartChangeType | button | GroupChartType |  |

### TabChartToolsFormat

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupArrange | group |  |  |
| GroupChartCurrentSelection | group |  |  |
| GroupShapeStyles | group |  |  |
| GroupSize | group |  |  |
| GroupWordArtStyles | group |  |  |
| ObjectAlignMenu | menu | GroupArrange |  |
| ObjectBringForwardMenu | splitButton | GroupArrange |  |
| ObjectRotateGallery | gallery | GroupArrange |  |
| ObjectsArrangeMenu | menu | GroupArrange |  |
| ObjectSendBackwardMenu | splitButton | GroupArrange |  |
| ObjectsGroupMenu | menu | GroupArrange |  |
| SelectionPane | toggleButton | GroupArrange |  |
| AlignDistributeHorizontally | button | GroupArrange | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrange | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrange | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectRotateGallery |
| AlignDistributeHorizontally | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectAlignMenu | menu | GroupArrange | ObjectsArrangeMenu |
| ObjectBringForward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectBringToFront | button | GroupArrange | ObjectsArrangeMenu |
| ObjectRotateGallery | gallery | GroupArrange | ObjectsArrangeMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectsArrangeMenu > ObjectRotateGallery |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectSendBackward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectSendToBack | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsGroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsArrangeMenu |
| SelectionPane | toggleButton | GroupArrange | ObjectsArrangeMenu |
| ObjectSendBackward | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsGroupMenu |
| ChartElementSelector | comboBox | GroupChartCurrentSelection |  |
| ChartFormatSelection | button | GroupChartCurrentSelection |  |
| ChartResetToMatchStyle | button | GroupChartCurrentSelection |  |
| ObjectFormatDialog | button (dialogBoxLauncher) | GroupShapeStyles |  |
| ShapeEffectsMenu | menu | GroupShapeStyles |  |
| ShapeFillColorPicker | gallery | GroupShapeStyles |  |
| ShapeOutlineColorPicker | gallery | GroupShapeStyles |  |
| ShapeStylesGallery | gallery | GroupShapeStyles |  |
| _3DBevelOptionsDialog | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectPresetGallery |
| _3DBevelOptionsDialog | button | GroupShapeStyles | ShapeEffectsMenu > BevelShapeGallery |
| _3DRotationGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| _3DRotationOptionsDialog | button | GroupShapeStyles | ShapeEffectsMenu > _3DRotationGallery |
| BevelShapeGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| EyedropperGlow | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| GlowColorMoreColorsDialog | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| GlowColorPicker | gallery | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| GlowsMoreOptions | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| ObjectEffectGlowGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ObjectEffectPresetGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ObjectEffectShadowGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ObjectEffectSoftEdgesGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ReflectionGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ReflectionsMoreOptions | button | GroupShapeStyles | ShapeEffectsMenu > ReflectionGallery |
| ShadowOptionsDialog | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectShadowGallery |
| SoftEdgesMoreOptions | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectSoftEdgesGallery |
| EyedropperFill | button | GroupShapeStyles | ShapeFillColorPicker |
| GradientGallery | gallery | GroupShapeStyles | ShapeFillColorPicker |
| MoreTextureOptions | button | GroupShapeStyles | ShapeFillColorPicker > ShapeFillTextureGallery |
| ObjectFillMoreColorsDialog | button | GroupShapeStyles | ShapeFillColorPicker |
| ObjectPictureFill | button | GroupShapeStyles | ShapeFillColorPicker |
| ShapeFillMoreGradientsDialog | button | GroupShapeStyles | ShapeFillColorPicker > GradientGallery |
| ShapeFillTextureGallery | gallery | GroupShapeStyles | ShapeFillColorPicker |
| ArrowsMore | button | GroupShapeStyles | ShapeOutlineColorPicker > ArrowStyleGallery |
| ArrowStyleGallery | gallery | GroupShapeStyles | ShapeOutlineColorPicker |
| EyedropperOutline | button | GroupShapeStyles | ShapeOutlineColorPicker |
| GallerySketchyShapes | gallery | GroupShapeStyles | ShapeOutlineColorPicker |
| LineStylesDialog | button | GroupShapeStyles | ShapeOutlineColorPicker > OutlineDashesGallery |
| LineStylesDialog | button | GroupShapeStyles | ShapeOutlineColorPicker > OutlineWeightGallery |
| MoreLines2 | button | GroupShapeStyles | ShapeOutlineColorPicker > GallerySketchyShapes |
| ObjectBorderOutlineColorMoreColorsDialog | button | GroupShapeStyles | ShapeOutlineColorPicker |
| OutlineDashesGallery | gallery | GroupShapeStyles | ShapeOutlineColorPicker |
| OutlineWeightGallery | gallery | GroupShapeStyles | ShapeOutlineColorPicker |
| ShapeStylesOtherThemeFillsGallery | gallery | GroupShapeStyles | ShapeStylesGallery |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | GroupSize |  |
| ShapeHeight | control | GroupSize |  |
| ShapeWidth | control | GroupSize |  |
| TextEffectsMenu | menu | GroupWordArtStyles |  |
| TextFillColorPicker | gallery | GroupWordArtStyles |  |
| TextOutlineColorPicker | gallery | GroupWordArtStyles |  |
| TextStylesGallery | gallery | GroupWordArtStyles |  |
| WordArtFormatDialog | button (dialogBoxLauncher) | GroupWordArtStyles |  |
| BevelTextGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| EyedropperGlowText | button | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextEffectGlowGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextEffects3DRotationGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextEffects3DRotationOptionsDialog | button | GroupWordArtStyles | TextEffectsMenu > TextEffects3DRotationGallery |
| TextEffectsBevelMore3DOptionsDialog | button | GroupWordArtStyles | TextEffectsMenu > BevelTextGallery |
| TextEffectsGlowsMoreOptions | button | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextEffectShadowGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextEffectsMoreShadowsDialog | button | GroupWordArtStyles | TextEffectsMenu > TextEffectShadowGallery |
| TextEffectsReflectionsMoreOptions | button | GroupWordArtStyles | TextEffectsMenu > TextReflectionGallery |
| TextEffectTransformGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextGlowColorMoreColorsDialog | button | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextGlowColorPicker | gallery | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextReflectionGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| EyedropperFillText | button | GroupWordArtStyles | TextFillColorPicker |
| TextFillColorMoreColorsDialog | button | GroupWordArtStyles | TextFillColorPicker |
| TextFillGradientGallery | gallery | GroupWordArtStyles | TextFillColorPicker |
| TextFillMoreGradientsDialog | button | GroupWordArtStyles | TextFillColorPicker > TextFillGradientGallery |
| TextFillMoreTextures | button | GroupWordArtStyles | TextFillColorPicker > TextFillTextureGallery |
| TextFillTextureGallery | gallery | GroupWordArtStyles | TextFillColorPicker |
| TextPictureFill | button | GroupWordArtStyles | TextFillColorPicker |
| EyedropperOutlineText | button | GroupWordArtStyles | TextOutlineColorPicker |
| TextOutlineColorMoreColorsDialog | button | GroupWordArtStyles | TextOutlineColorPicker |
| TextOutlineDashesGallery | gallery | GroupWordArtStyles | TextOutlineColorPicker |
| TextOutlineMoreLinesDialog | button | GroupWordArtStyles | TextOutlineColorPicker > TextOutlineWeightGallery |
| TextOutlineMoreLinesDialog | button | GroupWordArtStyles | TextOutlineColorPicker > TextOutlineDashesGallery |
| TextOutlineWeightGallery | gallery | GroupWordArtStyles | TextOutlineColorPicker |
| WordArtClear | button | GroupWordArtStyles | TextStylesGallery |

### TabChartToolsFormatNew

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupAltText | group |  |  |
| GroupArrange | group |  |  |
| GroupChartCurrentSelection | group |  |  |
| GroupChartShapeStyles | group |  |  |
| GroupShapesChart | group |  |  |
| GroupSize | group |  |  |
| GroupWordArtStyles | group |  |  |
| AltTextPaneRibbon | toggleButton | GroupAltText |  |
| ObjectAlignMenu | menu | GroupArrange |  |
| ObjectBringForwardMenu | splitButton | GroupArrange |  |
| ObjectRotateGallery | gallery | GroupArrange |  |
| ObjectsArrangeMenu | menu | GroupArrange |  |
| ObjectSendBackwardMenu | splitButton | GroupArrange |  |
| ObjectsGroupMenu | menu | GroupArrange |  |
| SelectionPane | toggleButton | GroupArrange |  |
| AlignDistributeHorizontally | button | GroupArrange | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrange | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrange | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectRotateGallery |
| AlignDistributeHorizontally | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectAlignMenu | menu | GroupArrange | ObjectsArrangeMenu |
| ObjectBringForward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectBringToFront | button | GroupArrange | ObjectsArrangeMenu |
| ObjectRotateGallery | gallery | GroupArrange | ObjectsArrangeMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectsArrangeMenu > ObjectRotateGallery |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectSendBackward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectSendToBack | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsGroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsArrangeMenu |
| SelectionPane | toggleButton | GroupArrange | ObjectsArrangeMenu |
| ObjectSendBackward | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsGroupMenu |
| ChartElementSelector | comboBox | GroupChartCurrentSelection |  |
| ChartFormatSelection | button | GroupChartCurrentSelection |  |
| ChartResetToMatchStyle | button | GroupChartCurrentSelection |  |
| ColorPickerChartLineStyles | gallery | GroupChartShapeStyles |  |
| ObjectFormatDialog | button (dialogBoxLauncher) | GroupChartShapeStyles |  |
| ShapeEffectsMenu | menu | GroupChartShapeStyles |  |
| ShapeFillColorPicker | gallery | GroupChartShapeStyles |  |
| ShapeStylesGallery | gallery | GroupChartShapeStyles |  |
| ArrowsMore | button | GroupChartShapeStyles | ColorPickerChartLineStyles > ArrowStyleGallery |
| ArrowStyleGallery | gallery | GroupChartShapeStyles | ColorPickerChartLineStyles |
| EyedropperOutline | button | GroupChartShapeStyles | ColorPickerChartLineStyles |
| LineStylesDialog | button | GroupChartShapeStyles | ColorPickerChartLineStyles > OutlineDashesGallery |
| LineStylesDialog | button | GroupChartShapeStyles | ColorPickerChartLineStyles > OutlineWeightGallery |
| ObjectBorderOutlineColorMoreColorsDialog | button | GroupChartShapeStyles | ColorPickerChartLineStyles |
| OutlineDashesGallery | gallery | GroupChartShapeStyles | ColorPickerChartLineStyles |
| OutlineWeightGallery | gallery | GroupChartShapeStyles | ColorPickerChartLineStyles |
| _3DBevelOptionsDialog | button | GroupChartShapeStyles | ShapeEffectsMenu > ObjectEffectPresetGallery |
| _3DBevelOptionsDialog | button | GroupChartShapeStyles | ShapeEffectsMenu > BevelShapeGallery |
| _3DRotationGallery | gallery | GroupChartShapeStyles | ShapeEffectsMenu |
| _3DRotationOptionsDialog | button | GroupChartShapeStyles | ShapeEffectsMenu > _3DRotationGallery |
| BevelShapeGallery | gallery | GroupChartShapeStyles | ShapeEffectsMenu |
| EyedropperGlow | button | GroupChartShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| GlowColorMoreColorsDialog | button | GroupChartShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| GlowColorPicker | gallery | GroupChartShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| GlowsMoreOptions | button | GroupChartShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| ObjectEffectGlowGallery | gallery | GroupChartShapeStyles | ShapeEffectsMenu |
| ObjectEffectPresetGallery | gallery | GroupChartShapeStyles | ShapeEffectsMenu |
| ObjectEffectShadowGallery | gallery | GroupChartShapeStyles | ShapeEffectsMenu |
| ObjectEffectSoftEdgesGallery | gallery | GroupChartShapeStyles | ShapeEffectsMenu |
| ReflectionGallery | gallery | GroupChartShapeStyles | ShapeEffectsMenu |
| ReflectionsMoreOptions | button | GroupChartShapeStyles | ShapeEffectsMenu > ReflectionGallery |
| ShadowOptionsDialog | button | GroupChartShapeStyles | ShapeEffectsMenu > ObjectEffectShadowGallery |
| SoftEdgesMoreOptions | button | GroupChartShapeStyles | ShapeEffectsMenu > ObjectEffectSoftEdgesGallery |
| EyedropperFill | button | GroupChartShapeStyles | ShapeFillColorPicker |
| GradientGallery | gallery | GroupChartShapeStyles | ShapeFillColorPicker |
| MoreTextureOptions | button | GroupChartShapeStyles | ShapeFillColorPicker > ShapeFillTextureGallery |
| ObjectFillMoreColorsDialog | button | GroupChartShapeStyles | ShapeFillColorPicker |
| ObjectPictureFill | button | GroupChartShapeStyles | ShapeFillColorPicker |
| ShapeFillMoreGradientsDialog | button | GroupChartShapeStyles | ShapeFillColorPicker > GradientGallery |
| ShapeFillTextureGallery | gallery | GroupChartShapeStyles | ShapeFillColorPicker |
| ShapeStylesOtherThemeFillsGallery | gallery | GroupChartShapeStyles | ShapeStylesGallery |
| ShapeChangeShapeGallery | gallery | GroupShapesChart |  |
| ShapesInsertGallery | gallery | GroupShapesChart |  |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | GroupSize |  |
| ShapeHeight | control | GroupSize |  |
| ShapeWidth | control | GroupSize |  |
| TextEffectsMenu | menu | GroupWordArtStyles |  |
| TextFillColorPicker | gallery | GroupWordArtStyles |  |
| TextOutlineColorPicker | gallery | GroupWordArtStyles |  |
| TextStylesGallery | gallery | GroupWordArtStyles |  |
| WordArtFormatDialog | button (dialogBoxLauncher) | GroupWordArtStyles |  |
| BevelTextGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| EyedropperGlowText | button | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextEffectGlowGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextEffects3DRotationGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextEffects3DRotationOptionsDialog | button | GroupWordArtStyles | TextEffectsMenu > TextEffects3DRotationGallery |
| TextEffectsBevelMore3DOptionsDialog | button | GroupWordArtStyles | TextEffectsMenu > BevelTextGallery |
| TextEffectsGlowsMoreOptions | button | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextEffectShadowGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextEffectsMoreShadowsDialog | button | GroupWordArtStyles | TextEffectsMenu > TextEffectShadowGallery |
| TextEffectsReflectionsMoreOptions | button | GroupWordArtStyles | TextEffectsMenu > TextReflectionGallery |
| TextEffectTransformGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextGlowColorMoreColorsDialog | button | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextGlowColorPicker | gallery | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextReflectionGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| EyedropperFillText | button | GroupWordArtStyles | TextFillColorPicker |
| TextFillColorMoreColorsDialog | button | GroupWordArtStyles | TextFillColorPicker |
| TextFillGradientGallery | gallery | GroupWordArtStyles | TextFillColorPicker |
| TextFillMoreGradientsDialog | button | GroupWordArtStyles | TextFillColorPicker > TextFillGradientGallery |
| TextFillMoreTextures | button | GroupWordArtStyles | TextFillColorPicker > TextFillTextureGallery |
| TextFillTextureGallery | gallery | GroupWordArtStyles | TextFillColorPicker |
| TextPictureFill | button | GroupWordArtStyles | TextFillColorPicker |
| EyedropperOutlineText | button | GroupWordArtStyles | TextOutlineColorPicker |
| TextOutlineColorMoreColorsDialog | button | GroupWordArtStyles | TextOutlineColorPicker |
| TextOutlineDashesGallery | gallery | GroupWordArtStyles | TextOutlineColorPicker |
| TextOutlineMoreLinesDialog | button | GroupWordArtStyles | TextOutlineColorPicker > TextOutlineWeightGallery |
| TextOutlineMoreLinesDialog | button | GroupWordArtStyles | TextOutlineColorPicker > TextOutlineDashesGallery |
| TextOutlineWeightGallery | gallery | GroupWordArtStyles | TextOutlineColorPicker |
| WordArtClear | button | GroupWordArtStyles | TextStylesGallery |

### TabChartToolsLayout

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupChartAnalysis | group |  |  |
| GroupChartAxes | group |  |  |
| GroupChartBackground | group |  |  |
| GroupChartCurrentSelection | group |  |  |
| GroupChartLabels | group |  |  |
| GroupChartShapes | group |  |  |
| ChartErrorBars | gallery | GroupChartAnalysis |  |
| ChartLines | gallery | GroupChartAnalysis |  |
| ChartTrendline | gallery | GroupChartAnalysis |  |
| ChartUpDownBars | gallery | GroupChartAnalysis |  |
| ChartErrorBarsOptionsDialog | button | GroupChartAnalysis | ChartErrorBars |
| ChartTrendlineOptionsDialog | button | GroupChartAnalysis | ChartTrendline |
| ChartUpDownBarsOptionsDialog | button | GroupChartAnalysis | ChartUpDownBars |
| ChartAxes | menu | GroupChartAxes |  |
| ChartGridlines | menu | GroupChartAxes |  |
| ChartDepthAxis | gallery | GroupChartAxes | ChartAxes |
| ChartDepthAxisOptionsDialog | button | GroupChartAxes | ChartAxes > ChartDepthAxis |
| ChartPrimaryHorizontalAxis | gallery | GroupChartAxes | ChartAxes |
| ChartPrimaryHorizontalAxisOptionsDialog | button | GroupChartAxes | ChartAxes > ChartPrimaryHorizontalAxis |
| ChartPrimaryVerticalAxis | gallery | GroupChartAxes | ChartAxes |
| ChartPrimaryVerticalAxisOptionsDialog | button | GroupChartAxes | ChartAxes > ChartPrimaryVerticalAxis |
| ChartSecondaryHorizontalAxis | gallery | GroupChartAxes | ChartAxes |
| ChartSecondaryHorizontalAxisOption | button | GroupChartAxes | ChartAxes > ChartSecondaryHorizontalAxis |
| ChartSecondaryVerticalAxis | gallery | GroupChartAxes | ChartAxes |
| ChartSecondaryVerticalAxisOptionsDialog | button | GroupChartAxes | ChartAxes > ChartSecondaryVerticalAxis |
| ChartDepthGridlines | gallery | GroupChartAxes | ChartGridlines |
| ChartDepthGridlinesOptionsDialog | button | GroupChartAxes | ChartGridlines > ChartDepthGridlines |
| ChartPrimaryHorizontalGridlines | gallery | GroupChartAxes | ChartGridlines |
| ChartPrimaryHorizontalGridlinesOptionsDialog | button | GroupChartAxes | ChartGridlines > ChartPrimaryHorizontalGridlines |
| ChartPrimaryVerticalGridlines | gallery | GroupChartAxes | ChartGridlines |
| ChartPrimaryVerticalGridlinesOptionsDialog | button | GroupChartAxes | ChartGridlines > ChartPrimaryVerticalGridlines |
| ChartSecondaryHorizontalGridlines | gallery | GroupChartAxes | ChartGridlines |
| ChartSecondaryHorizontalGridlinesOptionsDialog | button | GroupChartAxes | ChartGridlines > ChartSecondaryHorizontalGridlines |
| ChartSecondaryVerticalGridlines | gallery | GroupChartAxes | ChartGridlines |
| ChartSecondaryVerticalGridlinesOptionsDialog | button | GroupChartAxes | ChartGridlines > ChartSecondaryVerticalGridlines |
| Chart3DView | button | GroupChartBackground |  |
| ChartFloor | gallery | GroupChartBackground |  |
| ChartPlotArea | gallery | GroupChartBackground |  |
| ChartWall | gallery | GroupChartBackground |  |
| ChartFloorOptionsDialog | button | GroupChartBackground | ChartFloor |
| ChartPlotAreaOptionsDialog | button | GroupChartBackground | ChartPlotArea |
| ChartWallOptionsDialog | button | GroupChartBackground | ChartWall |
| ChartElementSelector | comboBox | GroupChartCurrentSelection |  |
| ChartFormatSelection | button | GroupChartCurrentSelection |  |
| ChartResetToMatchStyle | button | GroupChartCurrentSelection |  |
| ChartAxisTitles | menu | GroupChartLabels |  |
| ChartDataLabel | gallery | GroupChartLabels |  |
| ChartDataTable | gallery | GroupChartLabels |  |
| ChartLegend | gallery | GroupChartLabels |  |
| ChartTitle | gallery | GroupChartLabels |  |
| ChartDepthAxisTitle | gallery | GroupChartLabels | ChartAxisTitles |
| ChartDepthAxisTitleOptionsDialog | button | GroupChartLabels | ChartAxisTitles > ChartDepthAxisTitle |
| ChartPrimaryHorizontalAxisTitle | gallery | GroupChartLabels | ChartAxisTitles |
| ChartPrimaryHorizontalAxisTitleOptionsDialog | button | GroupChartLabels | ChartAxisTitles > ChartPrimaryHorizontalAxisTitle |
| ChartPrimaryVerticalAxisTitle | gallery | GroupChartLabels | ChartAxisTitles |
| ChartPrimaryVerticalAxisTitleOptionsDialog | button | GroupChartLabels | ChartAxisTitles > ChartPrimaryVerticalAxisTitle |
| ChartSecondaryHorizontalAxisTitle | gallery | GroupChartLabels | ChartAxisTitles |
| ChartSecondaryHorizontalAxisTitleOptionsDialog | button | GroupChartLabels | ChartAxisTitles > ChartSecondaryHorizontalAxisTitle |
| ChartSecondaryVerticalAxisTitle | gallery | GroupChartLabels | ChartAxisTitles |
| ChartSecondaryVerticalAxisTitleOptionsDialog | button | GroupChartLabels | ChartAxisTitles > ChartSecondaryVerticalAxisTitle |
| ChartDataLabelDialog | button | GroupChartLabels | ChartDataLabel |
| ChartDataTableOptionsDialog | button | GroupChartLabels | ChartDataTable |
| ChartLegendOptionsDialogDialog | button | GroupChartLabels | ChartLegend |
| ChartTitleOptionsDialog | button | GroupChartLabels | ChartTitle |
| PictureInsertFromFile | button | GroupChartShapes |  |
| ShapesInsertGallery | gallery | GroupChartShapes |  |
| TextBoxInsert | toggleButton | GroupChartShapes |  |
| TextBoxInsertMenu | splitButton | GroupChartShapes |  |
| TextBoxInsertHorizontal | toggleButton | GroupChartShapes | TextBoxInsertMenu |
| TextBoxInsertVertical | toggleButton | GroupChartShapes | TextBoxInsertMenu |

### (tab set definition)

| idMso | Type |
|---|---|
| TabChartToolsDesignNew | tab |
| TabChartToolsFormatNew | tab |
| TabChartToolsDesign | tab |
| TabChartToolsLayout | tab |
| TabChartToolsFormat | tab |

## TabSetDrawingTools

### TabDrawingToolsFormat

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupAltText | group |  |  |
| GroupArrangeWith3DEditor | group |  |  |
| GroupShapes | group |  |  |
| GroupShapeStyles | group |  |  |
| GroupSize | group |  |  |
| GroupWordArtStyles | group |  |  |
| AltTextPaneRibbon | toggleButton | GroupAltText |  |
| ObjectAlignMenu | menu | GroupArrangeWith3DEditor |  |
| ObjectBringForwardMenu | splitButton | GroupArrangeWith3DEditor |  |
| ObjectRotateGallery | gallery | GroupArrangeWith3DEditor |  |
| ObjectSendBackwardMenu | splitButton | GroupArrangeWith3DEditor |  |
| ObjectsGroupMenu | menu | GroupArrangeWith3DEditor |  |
| SelectionPane | toggleButton | GroupArrangeWith3DEditor |  |
| AlignDistributeHorizontally | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrangeWith3DEditor | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrangeWith3DEditor | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrangeWith3DEditor | ObjectRotateGallery |
| ObjectSendBackward | button | GroupArrangeWith3DEditor | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrangeWith3DEditor | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrangeWith3DEditor | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrangeWith3DEditor | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrangeWith3DEditor | ObjectsGroupMenu |
| CombineShapesGallery | gallery | GroupShapes |  |
| ObjectEditShapeMenu | menu | GroupShapes |  |
| ShapesInsertGallery | gallery | GroupShapes |  |
| TextboxFlyoutMenuAnchor | menu | GroupShapes |  |
| TextBoxInsert | toggleButton | GroupShapes |  |
| TextBoxInsertMenu | splitButton | GroupShapes |  |
| ObjectEditPoints | toggleButton | GroupShapes | ObjectEditShapeMenu |
| ShapeChangeShapeGallery | gallery | GroupShapes | ObjectEditShapeMenu |
| ShapeRerouteConnectors | toggleButton | GroupShapes | ObjectEditShapeMenu |
| TextBoxInsertHorizontal | toggleButton | GroupShapes | TextboxFlyoutMenuAnchor |
| TextBoxInsertVertical | toggleButton | GroupShapes | TextboxFlyoutMenuAnchor |
| TextBoxInsertHorizontal | toggleButton | GroupShapes | TextBoxInsertMenu |
| TextBoxInsertVertical | toggleButton | GroupShapes | TextBoxInsertMenu |
| ObjectFormatDialog | button (dialogBoxLauncher) | GroupShapeStyles |  |
| ShapeEffectsMenu | menu | GroupShapeStyles |  |
| ShapeFillColorPicker | gallery | GroupShapeStyles |  |
| ShapeOutlineColorPicker | gallery | GroupShapeStyles |  |
| ShapeStylesGallery | gallery | GroupShapeStyles |  |
| _3DBevelOptionsDialog | button | GroupShapeStyles | ShapeEffectsMenu > BevelShapeGallery |
| _3DBevelOptionsDialog | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectPresetGallery |
| _3DRotationGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| _3DRotationOptionsDialog | button | GroupShapeStyles | ShapeEffectsMenu > _3DRotationGallery |
| BevelShapeGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| EyedropperGlow | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| GlowColorMoreColorsDialog | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| GlowColorPicker | gallery | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| GlowsMoreOptions | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| ObjectEffectGlowGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ObjectEffectPresetGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ObjectEffectShadowGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ObjectEffectSoftEdgesGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ReflectionGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ReflectionsMoreOptions | button | GroupShapeStyles | ShapeEffectsMenu > ReflectionGallery |
| ShadowOptionsDialog | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectShadowGallery |
| SoftEdgesMoreOptions | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectSoftEdgesGallery |
| EyedropperFill | button | GroupShapeStyles | ShapeFillColorPicker |
| GradientGallery | gallery | GroupShapeStyles | ShapeFillColorPicker |
| MoreTextureOptions | button | GroupShapeStyles | ShapeFillColorPicker > ShapeFillTextureGallery |
| ObjectFillMoreColorsDialog | button | GroupShapeStyles | ShapeFillColorPicker |
| ObjectPictureFill | button | GroupShapeStyles | ShapeFillColorPicker |
| ShapeFillMoreGradientsDialog | button | GroupShapeStyles | ShapeFillColorPicker > GradientGallery |
| ShapeFillTextureGallery | gallery | GroupShapeStyles | ShapeFillColorPicker |
| ArrowsMore | button | GroupShapeStyles | ShapeOutlineColorPicker > ArrowStyleGallery |
| ArrowStyleGallery | gallery | GroupShapeStyles | ShapeOutlineColorPicker |
| EyedropperOutline | button | GroupShapeStyles | ShapeOutlineColorPicker |
| GallerySketchyShapes | gallery | GroupShapeStyles | ShapeOutlineColorPicker |
| LineStylesDialog | button | GroupShapeStyles | ShapeOutlineColorPicker > OutlineWeightGallery |
| LineStylesDialog | button | GroupShapeStyles | ShapeOutlineColorPicker > OutlineDashesGallery |
| MoreLines2 | button | GroupShapeStyles | ShapeOutlineColorPicker > GallerySketchyShapes |
| ObjectBorderOutlineColorMoreColorsDialog | button | GroupShapeStyles | ShapeOutlineColorPicker |
| OutlineDashesGallery | gallery | GroupShapeStyles | ShapeOutlineColorPicker |
| OutlineWeightGallery | gallery | GroupShapeStyles | ShapeOutlineColorPicker |
| ShapeStylesOtherThemeFillsGallery | gallery | GroupShapeStyles | ShapeStylesGallery |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | GroupSize |  |
| ShapeHeight | control | GroupSize |  |
| ShapeWidth | control | GroupSize |  |
| TextEffectsMenu | menu | GroupWordArtStyles |  |
| TextFillColorPicker | gallery | GroupWordArtStyles |  |
| TextOutlineColorPicker | gallery | GroupWordArtStyles |  |
| TextStylesGallery | gallery | GroupWordArtStyles |  |
| WordArtFormatDialog | button (dialogBoxLauncher) | GroupWordArtStyles |  |
| BevelTextGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| EyedropperGlowText | button | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextEffectGlowGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextEffects3DRotationGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextEffects3DRotationOptionsDialog | button | GroupWordArtStyles | TextEffectsMenu > TextEffects3DRotationGallery |
| TextEffectsBevelMore3DOptionsDialog | button | GroupWordArtStyles | TextEffectsMenu > BevelTextGallery |
| TextEffectsGlowsMoreOptions | button | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextEffectShadowGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextEffectsMoreShadowsDialog | button | GroupWordArtStyles | TextEffectsMenu > TextEffectShadowGallery |
| TextEffectsReflectionsMoreOptions | button | GroupWordArtStyles | TextEffectsMenu > TextReflectionGallery |
| TextEffectTransformGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextGlowColorMoreColorsDialog | button | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextGlowColorPicker | gallery | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextReflectionGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| EyedropperFillText | button | GroupWordArtStyles | TextFillColorPicker |
| TextFillColorMoreColorsDialog | button | GroupWordArtStyles | TextFillColorPicker |
| TextFillGradientGallery | gallery | GroupWordArtStyles | TextFillColorPicker |
| TextFillMoreGradientsDialog | button | GroupWordArtStyles | TextFillColorPicker > TextFillGradientGallery |
| TextFillMoreTextures | button | GroupWordArtStyles | TextFillColorPicker > TextFillTextureGallery |
| TextFillTextureGallery | gallery | GroupWordArtStyles | TextFillColorPicker |
| TextPictureFill | button | GroupWordArtStyles | TextFillColorPicker |
| EyedropperOutlineText | button | GroupWordArtStyles | TextOutlineColorPicker |
| TextOutlineColorMoreColorsDialog | button | GroupWordArtStyles | TextOutlineColorPicker |
| TextOutlineDashesGallery | gallery | GroupWordArtStyles | TextOutlineColorPicker |
| TextOutlineMoreLinesDialog | button | GroupWordArtStyles | TextOutlineColorPicker > TextOutlineDashesGallery |
| TextOutlineMoreLinesDialog | button | GroupWordArtStyles | TextOutlineColorPicker > TextOutlineWeightGallery |
| TextOutlineWeightGallery | gallery | GroupWordArtStyles | TextOutlineColorPicker |
| WordArtClear | button | GroupWordArtStyles | TextStylesGallery |

### (tab set definition)

| idMso | Type |
|---|---|
| TabDrawingToolsFormat | tab |

## TabSetEquationTools

### TabEquationToolsDesign

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupEquationStructures | group |  |  |
| GroupEquationSymbols | group |  |  |
| GroupEquationTools | group |  |  |
| EquationAccentGallery | gallery | GroupEquationStructures |  |
| EquationDelimiterGallery | gallery | GroupEquationStructures |  |
| EquationFractionGallery | gallery | GroupEquationStructures |  |
| EquationFunctionGallery | gallery | GroupEquationStructures |  |
| EquationIntegralGallery | gallery | GroupEquationStructures |  |
| EquationLargeOperatorGallery | gallery | GroupEquationStructures |  |
| EquationLimitGallery | gallery | GroupEquationStructures |  |
| EquationMatrixGallery | gallery | GroupEquationStructures |  |
| EquationOperatorGallery | gallery | GroupEquationStructures |  |
| EquationRadicalGallery | gallery | GroupEquationStructures |  |
| EquationScriptGallery | gallery | GroupEquationStructures |  |
| EquationSymbolsInsertGallery | gallery | GroupEquationSymbols |  |
| EquationInsertGallery | gallery | GroupEquationTools |  |
| EquationLinearFormat | button | GroupEquationTools |  |
| EquationNormalText | toggleButton | GroupEquationTools |  |
| EquationOptions | button (dialogBoxLauncher) | GroupEquationTools |  |
| EquationProfessional | button | GroupEquationTools |  |
| InkEquation | button | GroupEquationTools |  |

### (tab set definition)

| idMso | Type |
|---|---|
| TabEquationToolsDesign | tab |

## TabSetInkTools

### TabInkToolsPens

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupDiagramming | group |  |  |
| GroupInkClose | group |  |  |
| GroupInkFormat | group |  |  |
| GroupInkPens | group |  |  |
| GroupInkSelect | group |  |  |
| GroupPens | group |  |  |
| GroupPensWrite | group |  |  |
| DiagrammingOnline | toggleButton | GroupDiagramming |  |
| InkStopInkingReadingView | button | GroupInkClose |  |
| ObjectsSelect | toggleButton | GroupInkFormat |  |
| InkFeltTipPen | toggleButton | GroupInkPens |  |
| ObjectsSelect | toggleButton | GroupInkSelect |  |
| InkColorPicker | gallery | GroupPens |  |
| LineThickness | gallery | GroupPens |  |
| PensGallery | gallery | GroupPens |  |
| EyedropperOutline | button | GroupPens | InkColorPicker |
| InkColorMoreColorsDialog | button | GroupPens | InkColorPicker |
| LineStylesDialog | button | GroupPens | LineThickness |
| PenAddFavorite | button | GroupPens | PensGallery |
| InkBallpointPen | toggleButton | GroupPensWrite |  |
| InkEraserMenu | splitButton | GroupPensWrite |  |
| InkHighlighter | toggleButton | GroupPensWrite |  |
| LassoSelect | toggleButton | GroupPensWrite |  |
| ObjectsSelect | toggleButton | GroupPensWrite |  |
| CurrentEraser | toggleButton | GroupPensWrite | InkEraserMenu |
| InkEraser | toggleButton | GroupPensWrite | InkEraserMenu |
| PointEraserMedium | toggleButton | GroupPensWrite | InkEraserMenu |
| PointEraserSmall | toggleButton | GroupPensWrite | InkEraserMenu |
| SegmentEraser | toggleButton | GroupPensWrite | InkEraserMenu |

### (tab set definition)

| idMso | Type |
|---|---|
| TabInkToolsPens | tab |

## TabSetInteractiveIndexTools

### TabInteractiveIndexToolsFormat

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupAltText | group |  |  |
| GroupArrange | group |  |  |
| GroupIndexOptions | group |  |  |
| GroupIndexStyles | group |  |  |
| GroupSize | group |  |  |
| AltTextPaneRibbon | toggleButton | GroupAltText |  |
| ObjectAlignMenu | menu | GroupArrange |  |
| ObjectBringForwardMenu | splitButton | GroupArrange |  |
| ObjectRotateGallery | gallery | GroupArrange |  |
| ObjectsArrangeMenu | menu | GroupArrange |  |
| ObjectSendBackwardMenu | splitButton | GroupArrange |  |
| ObjectsGroupMenu | menu | GroupArrange |  |
| SelectionPane | toggleButton | GroupArrange |  |
| AlignDistributeHorizontally | button | GroupArrange | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrange | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrange | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectRotateGallery |
| AlignDistributeHorizontally | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectAlignMenu | menu | GroupArrange | ObjectsArrangeMenu |
| ObjectBringForward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectBringToFront | button | GroupArrange | ObjectsArrangeMenu |
| ObjectRotateGallery | gallery | GroupArrange | ObjectsArrangeMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectsArrangeMenu > ObjectRotateGallery |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectSendBackward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectSendToBack | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsGroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsArrangeMenu |
| SelectionPane | toggleButton | GroupArrange | ObjectsArrangeMenu |
| ObjectSendBackward | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsGroupMenu |
| EnableTransition | checkBox | GroupIndexOptions |  |
| ResetLayout | button | GroupIndexOptions |  |
| ReturnBehavior | checkBox | GroupIndexOptions |  |
| SectionLinkResetPictureMenu | splitButton | GroupIndexOptions |  |
| SectionLinkTransitionDuration | control | GroupIndexOptions |  |
| UpdateInteractiveIndex | button | GroupIndexOptions |  |
| ChangeImage | button | GroupIndexOptions | SectionLinkResetPictureMenu |
| SlideLinkReset | button | GroupIndexOptions | SectionLinkResetPictureMenu |
| InteractiveIndexEffectsMenu | menu | GroupIndexStyles |  |
| InteractiveIndexUxColorPickerLine | gallery | GroupIndexStyles |  |
| ObjectFormatDialog | button (dialogBoxLauncher) | GroupIndexStyles |  |
| PictureStylesGallery | gallery | GroupIndexStyles |  |
| SlideLinkHideBackgroundBooleanChoice | toggleButton | GroupIndexStyles |  |
| _3DBevelOptionsDialog | button | GroupIndexStyles | InteractiveIndexEffectsMenu > _3DBevelPictureTopGallery |
| _3DBevelOptionsDialog | button | GroupIndexStyles | InteractiveIndexEffectsMenu > PictureEffectsPresetGallery |
| _3DBevelPictureTopGallery | gallery | GroupIndexStyles | InteractiveIndexEffectsMenu |
| _3DRotationOptionsDialog | button | GroupIndexStyles | InteractiveIndexEffectsMenu > PictureRotationGallery |
| EyedropperGlow | button | GroupIndexStyles | InteractiveIndexEffectsMenu > PictureEffectsGlowGallery |
| GlowColorMoreColorsDialog | button | GroupIndexStyles | InteractiveIndexEffectsMenu > PictureEffectsGlowGallery |
| GlowColorPicker | gallery | GroupIndexStyles | InteractiveIndexEffectsMenu > PictureEffectsGlowGallery |
| GlowsMoreOptions | button | GroupIndexStyles | InteractiveIndexEffectsMenu > PictureEffectsGlowGallery |
| PictureEffectsGlowGallery | gallery | GroupIndexStyles | InteractiveIndexEffectsMenu |
| PictureEffectsPresetGallery | gallery | GroupIndexStyles | InteractiveIndexEffectsMenu |
| PictureEffectsShadowGallery | gallery | GroupIndexStyles | InteractiveIndexEffectsMenu |
| PictureEffectsSoftEdgesGallery | gallery | GroupIndexStyles | InteractiveIndexEffectsMenu |
| PictureReflectionGallery | gallery | GroupIndexStyles | InteractiveIndexEffectsMenu |
| PictureRotationGallery | gallery | GroupIndexStyles | InteractiveIndexEffectsMenu |
| ReflectionsMoreOptions | button | GroupIndexStyles | InteractiveIndexEffectsMenu > PictureReflectionGallery |
| ShadowOptionsDialog | button | GroupIndexStyles | InteractiveIndexEffectsMenu > PictureEffectsShadowGallery |
| SoftEdgesMoreOptions | button | GroupIndexStyles | InteractiveIndexEffectsMenu > PictureEffectsSoftEdgesGallery |
| EyedropperOutline | button | GroupIndexStyles | InteractiveIndexUxColorPickerLine |
| LineStylesDialog | button | GroupIndexStyles | InteractiveIndexUxColorPickerLine > OutlineDashesGallery |
| LineStylesDialog | button | GroupIndexStyles | InteractiveIndexUxColorPickerLine > OutlineWeightGallery |
| ObjectBorderOutlineColorMoreColorsDialog | button | GroupIndexStyles | InteractiveIndexUxColorPickerLine |
| OutlineDashesGallery | gallery | GroupIndexStyles | InteractiveIndexUxColorPickerLine |
| OutlineWeightGallery | gallery | GroupIndexStyles | InteractiveIndexUxColorPickerLine |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | GroupSize |  |
| ShapeHeight | control | GroupSize |  |
| ShapeWidth | control | GroupSize |  |

### (tab set definition)

| idMso | Type |
|---|---|
| TabInteractiveIndexToolsFormat | tab |

## TabSetMovieTools

### TabMovieToolsOptions

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupArrange | group |  |  |
| GroupMovieOptions | group |  |  |
| GroupPlay | group |  |  |
| GroupSize | group |  |  |
| ObjectAlignMenu | menu | GroupArrange |  |
| ObjectBringForwardMenu | splitButton | GroupArrange |  |
| ObjectRotateGallery | gallery | GroupArrange |  |
| ObjectsArrangeMenu | menu | GroupArrange |  |
| ObjectSendBackwardMenu | splitButton | GroupArrange |  |
| ObjectsGroupMenu | menu | GroupArrange |  |
| SelectionPane | toggleButton | GroupArrange |  |
| AlignDistributeHorizontally | button | GroupArrange | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrange | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrange | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectRotateGallery |
| AlignDistributeHorizontally | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectAlignMenu | menu | GroupArrange | ObjectsArrangeMenu |
| ObjectBringForward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectBringToFront | button | GroupArrange | ObjectsArrangeMenu |
| ObjectRotateGallery | gallery | GroupArrange | ObjectsArrangeMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectsArrangeMenu > ObjectRotateGallery |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectSendBackward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectSendToBack | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsGroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsArrangeMenu |
| SelectionPane | toggleButton | GroupArrange | ObjectsArrangeMenu |
| ObjectSendBackward | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsGroupMenu |
| MediaClipLoopUntilStopped | checkBox | GroupMovieOptions |  |
| MediaClipToolsHideDuringShow | checkBox | GroupMovieOptions |  |
| MoviePlayAutomatically | dropDown | GroupMovieOptions |  |
| MoviePlayFullScreen | checkBox | GroupMovieOptions |  |
| MovieRewindAfterPlaying | checkBox | GroupMovieOptions |  |
| ObjectEditDialog | button (dialogBoxLauncher) | GroupMovieOptions |  |
| SlideShowVolume | gallery | GroupMovieOptions |  |
| MoviePlay | button | GroupPlay |  |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | GroupSize |  |
| ShapeHeight | control | GroupSize |  |
| ShapeWidth | control | GroupSize |  |

### (tab set definition)

| idMso | Type |
|---|---|
| TabMovieToolsOptions | tab |

## TabSetPictureTools

### TabPictureToolsFormat

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupAltText | group |  |  |
| GroupArrangeWith3DEditor | group |  |  |
| GroupImagePlay | group |  |  |
| GroupPictureSize | group |  |  |
| GroupPictureStyles | group |  |  |
| GroupPictureTools | group |  |  |
| AltTextPaneRibbon | toggleButton | GroupAltText |  |
| ObjectAlignMenu | menu | GroupArrangeWith3DEditor |  |
| ObjectBringForwardMenu | splitButton | GroupArrangeWith3DEditor |  |
| ObjectRotateGallery | gallery | GroupArrangeWith3DEditor |  |
| ObjectSendBackwardMenu | splitButton | GroupArrangeWith3DEditor |  |
| ObjectsGroupMenu | menu | GroupArrangeWith3DEditor |  |
| SelectionPane | toggleButton | GroupArrangeWith3DEditor |  |
| AlignDistributeHorizontally | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrangeWith3DEditor | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrangeWith3DEditor | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrangeWith3DEditor | ObjectRotateGallery |
| ObjectSendBackward | button | GroupArrangeWith3DEditor | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrangeWith3DEditor | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrangeWith3DEditor | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrangeWith3DEditor | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrangeWith3DEditor | ObjectsGroupMenu |
| ImagePlay | button | GroupImagePlay |  |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | GroupPictureSize |  |
| PictureCropTools | splitButton | GroupPictureSize |  |
| ShapeHeight | control | GroupPictureSize |  |
| ShapeWidth | control | GroupPictureSize |  |
| PictureCrop | toggleButton | GroupPictureSize | PictureCropTools |
| PictureCropAspectRatio16To10 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio16To9 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio1To1 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio2To3 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio3To2 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio3To4 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio3To5 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio4To3 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio4To5 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio5To3 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio5To4 | button | GroupPictureSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatioMenu | menu | GroupPictureSize | PictureCropTools |
| PictureFillCrop | button | GroupPictureSize | PictureCropTools |
| PictureFitCrop | button | GroupPictureSize | PictureCropTools |
| PictureShapeGallery | gallery | GroupPictureSize | PictureCropTools |
| OutlineColorPicker | gallery | GroupPictureStyles |  |
| PictureEffectsMenu | menu | GroupPictureStyles |  |
| PictureFormatDialog | button (dialogBoxLauncher) | GroupPictureStyles |  |
| PicturesConvertToSmartArt | gallery | GroupPictureStyles |  |
| PictureStylesGallery | gallery | GroupPictureStyles |  |
| EyedropperOutline | button | GroupPictureStyles | OutlineColorPicker |
| GallerySketchyShapes | gallery | GroupPictureStyles | OutlineColorPicker |
| LineStylesDialog | button | GroupPictureStyles | OutlineColorPicker > OutlineDashesGallery |
| LineStylesDialog | button | GroupPictureStyles | OutlineColorPicker > OutlineWeightGallery |
| MoreLines2 | button | GroupPictureStyles | OutlineColorPicker > GallerySketchyShapes |
| ObjectBorderOutlineColorMoreColorsDialog | button | GroupPictureStyles | OutlineColorPicker |
| OutlineDashesGallery | gallery | GroupPictureStyles | OutlineColorPicker |
| OutlineWeightGallery | gallery | GroupPictureStyles | OutlineColorPicker |
| _3DBevelOptionsDialog | button | GroupPictureStyles | PictureEffectsMenu > PictureEffectsPresetGallery |
| _3DBevelOptionsDialog | button | GroupPictureStyles | PictureEffectsMenu > _3DBevelPictureTopGallery |
| _3DBevelPictureTopGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| _3DRotationOptionsDialog | button | GroupPictureStyles | PictureEffectsMenu > PictureRotationGallery |
| EyedropperGlow | button | GroupPictureStyles | PictureEffectsMenu > PictureEffectsGlowGallery |
| GlowColorMoreColorsDialog | button | GroupPictureStyles | PictureEffectsMenu > PictureEffectsGlowGallery |
| GlowColorPicker | gallery | GroupPictureStyles | PictureEffectsMenu > PictureEffectsGlowGallery |
| GlowsMoreOptions | button | GroupPictureStyles | PictureEffectsMenu > PictureEffectsGlowGallery |
| PictureEffectsGlowGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| PictureEffectsPresetGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| PictureEffectsShadowGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| PictureEffectsSoftEdgesGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| PictureReflectionGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| PictureRotationGallery | gallery | GroupPictureStyles | PictureEffectsMenu |
| ReflectionsMoreOptions | button | GroupPictureStyles | PictureEffectsMenu > PictureReflectionGallery |
| ShadowOptionsDialog | button | GroupPictureStyles | PictureEffectsMenu > PictureEffectsShadowGallery |
| SoftEdgesMoreOptions | button | GroupPictureStyles | PictureEffectsMenu > PictureEffectsSoftEdgesGallery |
| AutoBackgroundRemoval | toggleButton | GroupPictureTools |  |
| PictureArtisticEffectsGallery | gallery | GroupPictureTools |  |
| PictureBackgroundRemoval | toggleButton | GroupPictureTools |  |
| PictureChange | button | GroupPictureTools |  |
| PictureChangeMenu | menu | GroupPictureTools |  |
| PictureColorMenu | menu | GroupPictureTools |  |
| PictureCorrectionsMenu | menu | GroupPictureTools |  |
| PictureResetSplitButton | splitButton | GroupPictureTools |  |
| PicturesCompress | button | GroupPictureTools |  |
| PictureTransparencyGallery | gallery | GroupPictureTools |  |
| ArtisticEffectsDialog | button | GroupPictureTools | PictureArtisticEffectsGallery |
| ChangeIcon | button | GroupPictureTools | PictureChangeMenu |
| PictureChangeFromClipboard | button | GroupPictureTools | PictureChangeMenu |
| PictureChangeFromFile | button | GroupPictureTools | PictureChangeMenu |
| PictureChangeFromM365 | button | GroupPictureTools | PictureChangeMenu |
| PictureChangeFromMobile | button | GroupPictureTools | PictureChangeMenu |
| PictureChangeFromOnline | button | GroupPictureTools | PictureChangeMenu |
| EyedropperRecolor | button | GroupPictureTools | PictureColorMenu > RecolorColorPicker |
| PictureColorDialog | button | GroupPictureTools | PictureColorMenu |
| PictureColorTempertatureGallery | gallery | GroupPictureTools | PictureColorMenu |
| PictureRecolorGallery | gallery | GroupPictureTools | PictureColorMenu |
| PictureRecolorMoreColorsDialog | button | GroupPictureTools | PictureColorMenu > RecolorColorPicker |
| PictureSaturationGallery | gallery | GroupPictureTools | PictureColorMenu |
| PictureSetTransparentColor | toggleButton | GroupPictureTools | PictureColorMenu |
| RecolorColorPicker | gallery | GroupPictureTools | PictureColorMenu |
| PictureBrightnessAndContrastGallery | gallery | GroupPictureTools | PictureCorrectionsMenu |
| PictureCorrectionsDialog | button | GroupPictureTools | PictureCorrectionsMenu |
| PictureSharpenSoftenGallery | gallery | GroupPictureTools | PictureCorrectionsMenu |
| PictureReset | button | GroupPictureTools | PictureResetSplitButton |
| PictureResetAndSize | button | GroupPictureTools | PictureResetSplitButton |
| PictureMoreTransparency | button | GroupPictureTools | PictureTransparencyGallery |

### (tab set definition)

| idMso | Type |
|---|---|
| TabPictureToolsFormat | tab |

## TabSetSmartArtTools

### TabSmartArtToolsDesign

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupSmartArtCreateGraphic | group |  |  |
| GroupSmartArtLayouts | group |  |  |
| GroupSmartArtQuickStyles | group |  |  |
| GroupSmartArtReset | group |  |  |
| SmartArtAddBullet | button | GroupSmartArtCreateGraphic |  |
| SmartArtAddShapeSplitMenu | splitButton | GroupSmartArtCreateGraphic |  |
| SmartArtDemote | button | GroupSmartArtCreateGraphic |  |
| SmartArtOrganizationChartMenu | menu | GroupSmartArtCreateGraphic |  |
| SmartArtPromote | button | GroupSmartArtCreateGraphic |  |
| SmartArtReorderDown | button | GroupSmartArtCreateGraphic |  |
| SmartArtReorderUp | button | GroupSmartArtCreateGraphic |  |
| SmartArtRightToLeft | toggleButton | GroupSmartArtCreateGraphic |  |
| SmartArtTextPane | toggleButton | GroupSmartArtCreateGraphic |  |
| SmartArtAddAssistant | button | GroupSmartArtCreateGraphic | SmartArtAddShapeSplitMenu |
| SmartArtAddShape | button | GroupSmartArtCreateGraphic | SmartArtAddShapeSplitMenu |
| SmartArtAddShapeAbove | button | GroupSmartArtCreateGraphic | SmartArtAddShapeSplitMenu |
| SmartArtAddShapeAfter | button | GroupSmartArtCreateGraphic | SmartArtAddShapeSplitMenu |
| SmartArtAddShapeBefore | button | GroupSmartArtCreateGraphic | SmartArtAddShapeSplitMenu |
| SmartArtAddShapeBelow | button | GroupSmartArtCreateGraphic | SmartArtAddShapeSplitMenu |
| SmartArtOrganizationChartBoth | button | GroupSmartArtCreateGraphic | SmartArtOrganizationChartMenu |
| SmartArtOrganizationChartLeftHanging | button | GroupSmartArtCreateGraphic | SmartArtOrganizationChartMenu |
| SmartArtOrganizationChartRightHanging | button | GroupSmartArtCreateGraphic | SmartArtOrganizationChartMenu |
| SmartArtOrganizationChartStandard | button | GroupSmartArtCreateGraphic | SmartArtOrganizationChartMenu |
| SmartArtLayoutGallery | gallery | GroupSmartArtLayouts |  |
| SmartArtMoreLayoutsDialog | button | GroupSmartArtLayouts | SmartArtLayoutGallery |
| SmartArtChangeColorsGallery | gallery | GroupSmartArtQuickStyles |  |
| SmartArtStylesGallery | gallery | GroupSmartArtQuickStyles |  |
| SmartArtRecolorImages | toggleButton | GroupSmartArtQuickStyles | SmartArtChangeColorsGallery |
| ConvertSmartArtMenu | menu | GroupSmartArtReset |  |
| SmartArtResetGraphic | button | GroupSmartArtReset |  |
| SmartArtConvedrtToText | button | GroupSmartArtReset | ConvertSmartArtMenu |
| SmartArtConvertToShapes | button | GroupSmartArtReset | ConvertSmartArtMenu |

### TabSmartArtToolsFormat

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupAltText | group |  |  |
| GroupArrangeWith3DEditor | group |  |  |
| GroupShapeStyles | group |  |  |
| GroupSmartArtShapes | group |  |  |
| GroupSmartArtSize | group |  |  |
| GroupWordArtStyles | group |  |  |
| AltTextPaneRibbon | toggleButton | GroupAltText |  |
| ObjectAlignMenu | menu | GroupArrangeWith3DEditor |  |
| ObjectBringForwardMenu | splitButton | GroupArrangeWith3DEditor |  |
| ObjectRotateGallery | gallery | GroupArrangeWith3DEditor |  |
| ObjectSendBackwardMenu | splitButton | GroupArrangeWith3DEditor |  |
| ObjectsGroupMenu | menu | GroupArrangeWith3DEditor |  |
| SelectionPane | toggleButton | GroupArrangeWith3DEditor |  |
| AlignDistributeHorizontally | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrangeWith3DEditor | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrangeWith3DEditor | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrangeWith3DEditor | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrangeWith3DEditor | ObjectRotateGallery |
| ObjectSendBackward | button | GroupArrangeWith3DEditor | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrangeWith3DEditor | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrangeWith3DEditor | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrangeWith3DEditor | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrangeWith3DEditor | ObjectsGroupMenu |
| ObjectFormatDialog | button (dialogBoxLauncher) | GroupShapeStyles |  |
| ShapeEffectsMenu | menu | GroupShapeStyles |  |
| ShapeFillColorPicker | gallery | GroupShapeStyles |  |
| ShapeOutlineColorPicker | gallery | GroupShapeStyles |  |
| ShapeStylesGallery | gallery | GroupShapeStyles |  |
| _3DBevelOptionsDialog | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectPresetGallery |
| _3DBevelOptionsDialog | button | GroupShapeStyles | ShapeEffectsMenu > BevelShapeGallery |
| _3DRotationGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| _3DRotationOptionsDialog | button | GroupShapeStyles | ShapeEffectsMenu > _3DRotationGallery |
| BevelShapeGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| EyedropperGlow | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| GlowColorMoreColorsDialog | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| GlowColorPicker | gallery | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| GlowsMoreOptions | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectGlowGallery |
| ObjectEffectGlowGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ObjectEffectPresetGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ObjectEffectShadowGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ObjectEffectSoftEdgesGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ReflectionGallery | gallery | GroupShapeStyles | ShapeEffectsMenu |
| ReflectionsMoreOptions | button | GroupShapeStyles | ShapeEffectsMenu > ReflectionGallery |
| ShadowOptionsDialog | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectShadowGallery |
| SoftEdgesMoreOptions | button | GroupShapeStyles | ShapeEffectsMenu > ObjectEffectSoftEdgesGallery |
| EyedropperFill | button | GroupShapeStyles | ShapeFillColorPicker |
| GradientGallery | gallery | GroupShapeStyles | ShapeFillColorPicker |
| MoreTextureOptions | button | GroupShapeStyles | ShapeFillColorPicker > ShapeFillTextureGallery |
| ObjectFillMoreColorsDialog | button | GroupShapeStyles | ShapeFillColorPicker |
| ObjectPictureFill | button | GroupShapeStyles | ShapeFillColorPicker |
| ShapeFillMoreGradientsDialog | button | GroupShapeStyles | ShapeFillColorPicker > GradientGallery |
| ShapeFillTextureGallery | gallery | GroupShapeStyles | ShapeFillColorPicker |
| ArrowsMore | button | GroupShapeStyles | ShapeOutlineColorPicker > ArrowStyleGallery |
| ArrowStyleGallery | gallery | GroupShapeStyles | ShapeOutlineColorPicker |
| EyedropperOutline | button | GroupShapeStyles | ShapeOutlineColorPicker |
| GallerySketchyShapes | gallery | GroupShapeStyles | ShapeOutlineColorPicker |
| LineStylesDialog | button | GroupShapeStyles | ShapeOutlineColorPicker > OutlineWeightGallery |
| LineStylesDialog | button | GroupShapeStyles | ShapeOutlineColorPicker > OutlineDashesGallery |
| MoreLines2 | button | GroupShapeStyles | ShapeOutlineColorPicker > GallerySketchyShapes |
| ObjectBorderOutlineColorMoreColorsDialog | button | GroupShapeStyles | ShapeOutlineColorPicker |
| OutlineDashesGallery | gallery | GroupShapeStyles | ShapeOutlineColorPicker |
| OutlineWeightGallery | gallery | GroupShapeStyles | ShapeOutlineColorPicker |
| ShapeStylesOtherThemeFillsGallery | gallery | GroupShapeStyles | ShapeStylesGallery |
| ShapeChangeShapeGallery | gallery | GroupSmartArtShapes |  |
| SmartArtEditIn2D | toggleButton | GroupSmartArtShapes |  |
| SmartArtLargerShape | button | GroupSmartArtShapes |  |
| SmartArtSmallerShape | button | GroupSmartArtShapes |  |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | GroupSmartArtSize |  |
| ShapeHeight | control | GroupSmartArtSize |  |
| ShapeWidth | control | GroupSmartArtSize |  |
| TextEffectsMenu | menu | GroupWordArtStyles |  |
| TextFillColorPicker | gallery | GroupWordArtStyles |  |
| TextOutlineColorPicker | gallery | GroupWordArtStyles |  |
| TextStylesGallery | gallery | GroupWordArtStyles |  |
| WordArtFormatDialog | button (dialogBoxLauncher) | GroupWordArtStyles |  |
| BevelTextGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| EyedropperGlowText | button | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextEffectGlowGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextEffects3DRotationGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextEffects3DRotationOptionsDialog | button | GroupWordArtStyles | TextEffectsMenu > TextEffects3DRotationGallery |
| TextEffectsBevelMore3DOptionsDialog | button | GroupWordArtStyles | TextEffectsMenu > BevelTextGallery |
| TextEffectsGlowsMoreOptions | button | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextEffectShadowGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextEffectsMoreShadowsDialog | button | GroupWordArtStyles | TextEffectsMenu > TextEffectShadowGallery |
| TextEffectsReflectionsMoreOptions | button | GroupWordArtStyles | TextEffectsMenu > TextReflectionGallery |
| TextEffectTransformGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| TextGlowColorMoreColorsDialog | button | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextGlowColorPicker | gallery | GroupWordArtStyles | TextEffectsMenu > TextEffectGlowGallery |
| TextReflectionGallery | gallery | GroupWordArtStyles | TextEffectsMenu |
| EyedropperFillText | button | GroupWordArtStyles | TextFillColorPicker |
| TextFillColorMoreColorsDialog | button | GroupWordArtStyles | TextFillColorPicker |
| TextFillGradientGallery | gallery | GroupWordArtStyles | TextFillColorPicker |
| TextFillMoreGradientsDialog | button | GroupWordArtStyles | TextFillColorPicker > TextFillGradientGallery |
| TextFillMoreTextures | button | GroupWordArtStyles | TextFillColorPicker > TextFillTextureGallery |
| TextFillTextureGallery | gallery | GroupWordArtStyles | TextFillColorPicker |
| TextPictureFill | button | GroupWordArtStyles | TextFillColorPicker |
| EyedropperOutlineText | button | GroupWordArtStyles | TextOutlineColorPicker |
| TextOutlineColorMoreColorsDialog | button | GroupWordArtStyles | TextOutlineColorPicker |
| TextOutlineDashesGallery | gallery | GroupWordArtStyles | TextOutlineColorPicker |
| TextOutlineMoreLinesDialog | button | GroupWordArtStyles | TextOutlineColorPicker > TextOutlineDashesGallery |
| TextOutlineMoreLinesDialog | button | GroupWordArtStyles | TextOutlineColorPicker > TextOutlineWeightGallery |
| TextOutlineWeightGallery | gallery | GroupWordArtStyles | TextOutlineColorPicker |
| WordArtClear | button | GroupWordArtStyles | TextStylesGallery |

### (tab set definition)

| idMso | Type |
|---|---|
| TabSmartArtToolsDesign | tab |
| TabSmartArtToolsFormat | tab |

## TabSetSoundTools

### TabSoundToolsOptions

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupArrange | group |  |  |
| GroupPlay | group |  |  |
| GroupSize | group |  |  |
| GroupSoundOptions | group |  |  |
| ObjectAlignMenu | menu | GroupArrange |  |
| ObjectBringForwardMenu | splitButton | GroupArrange |  |
| ObjectRotateGallery | gallery | GroupArrange |  |
| ObjectsArrangeMenu | menu | GroupArrange |  |
| ObjectSendBackwardMenu | splitButton | GroupArrange |  |
| ObjectsGroupMenu | menu | GroupArrange |  |
| SelectionPane | toggleButton | GroupArrange |  |
| AlignDistributeHorizontally | button | GroupArrange | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrange | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrange | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectRotateGallery |
| AlignDistributeHorizontally | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectAlignMenu | menu | GroupArrange | ObjectsArrangeMenu |
| ObjectBringForward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectBringToFront | button | GroupArrange | ObjectsArrangeMenu |
| ObjectRotateGallery | gallery | GroupArrange | ObjectsArrangeMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectsArrangeMenu > ObjectRotateGallery |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectSendBackward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectSendToBack | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsGroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsArrangeMenu |
| SelectionPane | toggleButton | GroupArrange | ObjectsArrangeMenu |
| ObjectSendBackward | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsGroupMenu |
| MoviePlay | button | GroupPlay |  |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | GroupSize |  |
| ShapeHeight | control | GroupSize |  |
| ShapeWidth | control | GroupSize |  |
| MediaClipLoopUntilStopped | checkBox | GroupSoundOptions |  |
| MediaClipToolsHideDuringShow | checkBox | GroupSoundOptions |  |
| ObjectEditDialog | button (dialogBoxLauncher) | GroupSoundOptions |  |
| SlideShowVolume | gallery | GroupSoundOptions |  |
| SoundPlaySoundGallery | dropDown | GroupSoundOptions |  |

### (tab set definition)

| idMso | Type |
|---|---|
| TabSoundToolsOptions | tab |

## TabSetSVGTools

### TabGraphicsToolsFormat

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupAltText | group |  |  |
| GroupArrange | group |  |  |
| GroupGraphicsSize | group |  |  |
| GroupGraphicsStyles | group |  |  |
| GroupIcons | group |  |  |
| AltTextPaneRibbon | toggleButton | GroupAltText |  |
| ObjectAlignMenu | menu | GroupArrange |  |
| ObjectBringForwardMenu | splitButton | GroupArrange |  |
| ObjectRotateGallery | gallery | GroupArrange |  |
| ObjectsArrangeMenu | menu | GroupArrange |  |
| ObjectSendBackwardMenu | splitButton | GroupArrange |  |
| ObjectsGroupMenu | menu | GroupArrange |  |
| SelectionPane | toggleButton | GroupArrange |  |
| AlignDistributeHorizontally | button | GroupArrange | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrange | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrange | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectRotateGallery |
| AlignDistributeHorizontally | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectAlignMenu | menu | GroupArrange | ObjectsArrangeMenu |
| ObjectBringForward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectBringToFront | button | GroupArrange | ObjectsArrangeMenu |
| ObjectRotateGallery | gallery | GroupArrange | ObjectsArrangeMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectsArrangeMenu > ObjectRotateGallery |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectSendBackward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectSendToBack | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsGroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsArrangeMenu |
| SelectionPane | toggleButton | GroupArrange | ObjectsArrangeMenu |
| ObjectSendBackward | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | GroupGraphicsSize |  |
| PictureCropTools | splitButton | GroupGraphicsSize |  |
| ShapeHeight | control | GroupGraphicsSize |  |
| ShapeWidth | control | GroupGraphicsSize |  |
| PictureCrop | toggleButton | GroupGraphicsSize | PictureCropTools |
| PictureCropAspectRatio16To10 | button | GroupGraphicsSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio16To9 | button | GroupGraphicsSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio1To1 | button | GroupGraphicsSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio2To3 | button | GroupGraphicsSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio3To2 | button | GroupGraphicsSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio3To4 | button | GroupGraphicsSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio3To5 | button | GroupGraphicsSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio4To3 | button | GroupGraphicsSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio4To5 | button | GroupGraphicsSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio5To3 | button | GroupGraphicsSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatio5To4 | button | GroupGraphicsSize | PictureCropTools > PictureCropAspectRatioMenu |
| PictureCropAspectRatioMenu | menu | GroupGraphicsSize | PictureCropTools |
| PictureFillCrop | button | GroupGraphicsSize | PictureCropTools |
| PictureFitCrop | button | GroupGraphicsSize | PictureCropTools |
| PictureShapeGallery | gallery | GroupGraphicsSize | PictureCropTools |
| GraphicsColorPicker | gallery | GroupGraphicsStyles |  |
| GraphicsEffectsMenu | menu | GroupGraphicsStyles |  |
| GraphicsFormatDialog | button (dialogBoxLauncher) | GroupGraphicsStyles |  |
| GraphicsOutlineColorPicker | gallery | GroupGraphicsStyles |  |
| GraphicsStylesGallery | gallery | GroupGraphicsStyles |  |
| EyedropperFill | button | GroupGraphicsStyles | GraphicsColorPicker |
| ObjectFillMoreColorsDialog | button | GroupGraphicsStyles | GraphicsColorPicker |
| _3DBevelOptionsDialog | button | GroupGraphicsStyles | GraphicsEffectsMenu > ObjectEffectPresetGallery |
| _3DBevelOptionsDialog | button | GroupGraphicsStyles | GraphicsEffectsMenu > BevelShapeGallery |
| _3DRotationGallery | gallery | GroupGraphicsStyles | GraphicsEffectsMenu |
| _3DRotationOptionsDialog | button | GroupGraphicsStyles | GraphicsEffectsMenu > _3DRotationGallery |
| BevelShapeGallery | gallery | GroupGraphicsStyles | GraphicsEffectsMenu |
| EyedropperGlow | button | GroupGraphicsStyles | GraphicsEffectsMenu > ObjectEffectGlowGallery |
| GlowColorMoreColorsDialog | button | GroupGraphicsStyles | GraphicsEffectsMenu > ObjectEffectGlowGallery |
| GlowColorPicker | gallery | GroupGraphicsStyles | GraphicsEffectsMenu > ObjectEffectGlowGallery |
| GlowsMoreOptions | button | GroupGraphicsStyles | GraphicsEffectsMenu > ObjectEffectGlowGallery |
| ObjectEffectGlowGallery | gallery | GroupGraphicsStyles | GraphicsEffectsMenu |
| ObjectEffectPresetGallery | gallery | GroupGraphicsStyles | GraphicsEffectsMenu |
| ObjectEffectShadowGallery | gallery | GroupGraphicsStyles | GraphicsEffectsMenu |
| ObjectEffectSoftEdgesGallery | gallery | GroupGraphicsStyles | GraphicsEffectsMenu |
| ReflectionGallery | gallery | GroupGraphicsStyles | GraphicsEffectsMenu |
| ReflectionsMoreOptions | button | GroupGraphicsStyles | GraphicsEffectsMenu > ReflectionGallery |
| ShadowOptionsDialog | button | GroupGraphicsStyles | GraphicsEffectsMenu > ObjectEffectShadowGallery |
| SoftEdgesMoreOptions | button | GroupGraphicsStyles | GraphicsEffectsMenu > ObjectEffectSoftEdgesGallery |
| EyedropperOutline | button | GroupGraphicsStyles | GraphicsOutlineColorPicker |
| LineStylesDialog | button | GroupGraphicsStyles | GraphicsOutlineColorPicker > OutlineWeightGallery |
| LineStylesDialog | button | GroupGraphicsStyles | GraphicsOutlineColorPicker > OutlineDashesGallery |
| ObjectBorderOutlineColorMoreColorsDialog | button | GroupGraphicsStyles | GraphicsOutlineColorPicker |
| OutlineDashesGallery | gallery | GroupGraphicsStyles | GraphicsOutlineColorPicker |
| OutlineWeightGallery | gallery | GroupGraphicsStyles | GraphicsOutlineColorPicker |
| GraphicChangeMenu | menu | GroupIcons |  |
| SVGEdit | button | GroupIcons |  |
| ChangeIcon | button | GroupIcons | GraphicChangeMenu |
| PictureChangeFromClipboard | button | GroupIcons | GraphicChangeMenu |
| PictureChangeFromFile | button | GroupIcons | GraphicChangeMenu |
| PictureChangeFromM365 | button | GroupIcons | GraphicChangeMenu |
| PictureChangeFromMobile | button | GroupIcons | GraphicChangeMenu |
| PictureChangeFromOnline | button | GroupIcons | GraphicChangeMenu |

### (tab set definition)

| idMso | Type |
|---|---|
| TabGraphicsToolsFormat | tab |

## TabSetTableTools

### TabTableToolsDesign

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupDrawBorders | group |  |  |
| GroupTableStyleOptionsPowerPoint | group |  |  |
| GroupTableStylesPowerPoint | group |  |  |
| GroupTextStylesTable | group |  |  |
| TableBorderPenColorPicker | gallery | GroupDrawBorders |  |
| TableDrawBorderPenStyle | dropDown | GroupDrawBorders |  |
| TableDrawBorderPenWeight | dropDown | GroupDrawBorders |  |
| TableDrawTable | toggleButton | GroupDrawBorders |  |
| TableEraser | toggleButton | GroupDrawBorders |  |
| TableBorderColorMoreColorsDialog | button | GroupDrawBorders | TableBorderPenColorPicker |
| TableStyleBandedColumnsPowerPoint | checkBox | GroupTableStyleOptionsPowerPoint |  |
| TableStyleBandedRowsPowerPoint | checkBox | GroupTableStyleOptionsPowerPoint |  |
| TableStyleFirstColumnPowerPoint | checkBox | GroupTableStyleOptionsPowerPoint |  |
| TableStyleFirstRowPowerPoint | checkBox | GroupTableStyleOptionsPowerPoint |  |
| TableStyleLastColumnPowerPoint | checkBox | GroupTableStyleOptionsPowerPoint |  |
| TableStyleTotalRowPowerPoint | checkBox | GroupTableStyleOptionsPowerPoint |  |
| ShadingColorPicker | gallery | GroupTableStylesPowerPoint |  |
| TableBordersMenu | splitButton | GroupTableStylesPowerPoint |  |
| TableEffectsMenu | menu | GroupTableStylesPowerPoint |  |
| TableStylesGallery | gallery | GroupTableStylesPowerPoint |  |
| EyedropperFill | button | GroupTableStylesPowerPoint | ShadingColorPicker |
| EyedropperFill | button | GroupTableStylesPowerPoint | ShadingColorPicker > TableBackgroundGallery |
| GradientGallery | gallery | GroupTableStylesPowerPoint | ShadingColorPicker |
| MoreTextureOptions | button | GroupTableStylesPowerPoint | ShadingColorPicker > ShapeFillTextureGallery |
| ObjectFillMoreColorsDialog | button | GroupTableStylesPowerPoint | ShadingColorPicker |
| ObjectPictureFill | button | GroupTableStylesPowerPoint | ShadingColorPicker |
| ShapeFillMoreGradientsDialog | button | GroupTableStylesPowerPoint | ShadingColorPicker > GradientGallery |
| ShapeFillTextureGallery | gallery | GroupTableStylesPowerPoint | ShadingColorPicker |
| TableBackgroundGallery | gallery | GroupTableStylesPowerPoint | ShadingColorPicker |
| TableBackgroundPictureFill | button | GroupTableStylesPowerPoint | ShadingColorPicker > TableBackgroundGallery |
| TableFillColorMoreColorsDialog | button | GroupTableStylesPowerPoint | ShadingColorPicker > TableBackgroundGallery |
| BorderBottom | toggleButton | GroupTableStylesPowerPoint | TableBordersMenu |
| BorderDiagonalDown | toggleButton | GroupTableStylesPowerPoint | TableBordersMenu |
| BorderDiagonalUp | toggleButton | GroupTableStylesPowerPoint | TableBordersMenu |
| BorderInside | toggleButton | GroupTableStylesPowerPoint | TableBordersMenu |
| BorderInsideHorizontal | toggleButton | GroupTableStylesPowerPoint | TableBordersMenu |
| BorderInsideVertical | toggleButton | GroupTableStylesPowerPoint | TableBordersMenu |
| BorderLeft | toggleButton | GroupTableStylesPowerPoint | TableBordersMenu |
| BorderNone | toggleButton | GroupTableStylesPowerPoint | TableBordersMenu |
| BorderOutside | toggleButton | GroupTableStylesPowerPoint | TableBordersMenu |
| BorderRight | toggleButton | GroupTableStylesPowerPoint | TableBordersMenu |
| BordersAll | toggleButton | GroupTableStylesPowerPoint | TableBordersMenu |
| BorderTop | toggleButton | GroupTableStylesPowerPoint | TableBordersMenu |
| ObjectEffectShadowGallery | gallery | GroupTableStylesPowerPoint | TableEffectsMenu |
| ReflectionGallery | gallery | GroupTableStylesPowerPoint | TableEffectsMenu |
| ReflectionsMoreOptions | button | GroupTableStylesPowerPoint | TableEffectsMenu > ReflectionGallery |
| ShadowOptionsDialog | button | GroupTableStylesPowerPoint | TableEffectsMenu > ObjectEffectShadowGallery |
| TableEffectsCellBevelGallery | gallery | GroupTableStylesPowerPoint | TableEffectsMenu |
| TableStyleClearTable | button | GroupTableStylesPowerPoint | TableStylesGallery |
| TableTextStylesGallery | gallery | GroupTextStylesTable |  |
| TextEffectsMenu | menu | GroupTextStylesTable |  |
| TextFillColorPicker | gallery | GroupTextStylesTable |  |
| TextOutlineColorPicker | gallery | GroupTextStylesTable |  |
| WordArtFormatDialog | button (dialogBoxLauncher) | GroupTextStylesTable |  |
| WordArtClear | button | GroupTextStylesTable | TableTextStylesGallery |
| BevelTextGallery | gallery | GroupTextStylesTable | TextEffectsMenu |
| EyedropperGlowText | button | GroupTextStylesTable | TextEffectsMenu > TextEffectGlowGallery |
| TextEffectGlowGallery | gallery | GroupTextStylesTable | TextEffectsMenu |
| TextEffects3DRotationGallery | gallery | GroupTextStylesTable | TextEffectsMenu |
| TextEffects3DRotationOptionsDialog | button | GroupTextStylesTable | TextEffectsMenu > TextEffects3DRotationGallery |
| TextEffectsBevelMore3DOptionsDialog | button | GroupTextStylesTable | TextEffectsMenu > BevelTextGallery |
| TextEffectsGlowsMoreOptions | button | GroupTextStylesTable | TextEffectsMenu > TextEffectGlowGallery |
| TextEffectShadowGallery | gallery | GroupTextStylesTable | TextEffectsMenu |
| TextEffectsMoreShadowsDialog | button | GroupTextStylesTable | TextEffectsMenu > TextEffectShadowGallery |
| TextEffectsReflectionsMoreOptions | button | GroupTextStylesTable | TextEffectsMenu > TextReflectionGallery |
| TextEffectTransformGallery | gallery | GroupTextStylesTable | TextEffectsMenu |
| TextGlowColorMoreColorsDialog | button | GroupTextStylesTable | TextEffectsMenu > TextEffectGlowGallery |
| TextGlowColorPicker | gallery | GroupTextStylesTable | TextEffectsMenu > TextEffectGlowGallery |
| TextReflectionGallery | gallery | GroupTextStylesTable | TextEffectsMenu |
| EyedropperFillText | button | GroupTextStylesTable | TextFillColorPicker |
| TextFillColorMoreColorsDialog | button | GroupTextStylesTable | TextFillColorPicker |
| TextFillGradientGallery | gallery | GroupTextStylesTable | TextFillColorPicker |
| TextFillMoreGradientsDialog | button | GroupTextStylesTable | TextFillColorPicker > TextFillGradientGallery |
| TextFillMoreTextures | button | GroupTextStylesTable | TextFillColorPicker > TextFillTextureGallery |
| TextFillTextureGallery | gallery | GroupTextStylesTable | TextFillColorPicker |
| TextPictureFill | button | GroupTextStylesTable | TextFillColorPicker |
| EyedropperOutlineText | button | GroupTextStylesTable | TextOutlineColorPicker |
| TextOutlineColorMoreColorsDialog | button | GroupTextStylesTable | TextOutlineColorPicker |
| TextOutlineDashesGallery | gallery | GroupTextStylesTable | TextOutlineColorPicker |
| TextOutlineMoreLinesDialog | button | GroupTextStylesTable | TextOutlineColorPicker > TextOutlineWeightGallery |
| TextOutlineMoreLinesDialog | button | GroupTextStylesTable | TextOutlineColorPicker > TextOutlineDashesGallery |
| TextOutlineWeightGallery | gallery | GroupTextStylesTable | TextOutlineColorPicker |

### TabTableToolsLayout

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupAlignment | group |  |  |
| GroupArrange | group |  |  |
| GroupMerge | group |  |  |
| GroupTable | group |  |  |
| GroupTableCellSize | group |  |  |
| GroupTableRowsAndColumns | group |  |  |
| GroupTableSize | group |  |  |
| AlignCenter | toggleButton | GroupAlignment |  |
| AlignLeft | toggleButton | GroupAlignment |  |
| AlignRight | toggleButton | GroupAlignment |  |
| TableCellAlignBottom | toggleButton | GroupAlignment |  |
| TableCellAlignCenterVertically | toggleButton | GroupAlignment |  |
| TableCellAlignTop | toggleButton | GroupAlignment |  |
| TableCellMarginsGallery | gallery | GroupAlignment |  |
| TableSetLeftToRight | toggleButton | GroupAlignment |  |
| TableSetRightToLeft | toggleButton | GroupAlignment |  |
| TextDirectionGallery | gallery | GroupAlignment |  |
| TableCellCustomMarginsDialog | button | GroupAlignment | TableCellMarginsGallery |
| TextDirectionMoreOptionsDialog | button | GroupAlignment | TextDirectionGallery |
| ObjectAlignMenu | menu | GroupArrange |  |
| ObjectBringForwardMenu | splitButton | GroupArrange |  |
| ObjectRotateGallery | gallery | GroupArrange |  |
| ObjectsArrangeMenu | menu | GroupArrange |  |
| ObjectSendBackwardMenu | splitButton | GroupArrange |  |
| ObjectsGroupMenu | menu | GroupArrange |  |
| SelectionPane | toggleButton | GroupArrange |  |
| AlignDistributeHorizontally | button | GroupArrange | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrange | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrange | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectRotateGallery |
| AlignDistributeHorizontally | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectAlignMenu | menu | GroupArrange | ObjectsArrangeMenu |
| ObjectBringForward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectBringToFront | button | GroupArrange | ObjectsArrangeMenu |
| ObjectRotateGallery | gallery | GroupArrange | ObjectsArrangeMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectsArrangeMenu > ObjectRotateGallery |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectSendBackward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectSendToBack | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsGroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsArrangeMenu |
| SelectionPane | toggleButton | GroupArrange | ObjectsArrangeMenu |
| ObjectSendBackward | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsGroupMenu |
| MergeCells | button | GroupMerge |  |
| SplitCells | button | GroupMerge |  |
| TableSelectMenuPowerPoint | menu | GroupTable |  |
| TableShowGridlines | toggleButton | GroupTable |  |
| TableColumnSelect | button | GroupTable | TableSelectMenuPowerPoint |
| TableRowSelect | button | GroupTable | TableSelectMenuPowerPoint |
| TableSelect | button | GroupTable | TableSelectMenuPowerPoint |
| TableColumnsDistribute | button | GroupTableCellSize |  |
| TableColumnWidth | control | GroupTableCellSize |  |
| TableRowHeight | control | GroupTableCellSize |  |
| TableRowsDistribute | button | GroupTableCellSize |  |
| TableDeleteRowsAndColumnsMenuWord | menu | GroupTableRowsAndColumns |  |
| TableInsertColumnsLeft | button | GroupTableRowsAndColumns |  |
| TableInsertColumnsRight | button | GroupTableRowsAndColumns |  |
| TableInsertRowsAbove | button | GroupTableRowsAndColumns |  |
| TableInsertRowsBelow | button | GroupTableRowsAndColumns |  |
| TableDelete | button | GroupTableRowsAndColumns | TableDeleteRowsAndColumnsMenuWord |
| TableDeleteColumns | button | GroupTableRowsAndColumns | TableDeleteRowsAndColumnsMenuWord |
| TableDeleteRows | button | GroupTableRowsAndColumns | TableDeleteRowsAndColumnsMenuWord |
| TableHeight | control | GroupTableSize |  |
| TableLockAspectRatio | checkBox | GroupTableSize |  |
| TableWidth | control | GroupTableSize |  |

### (tab set definition)

| idMso | Type |
|---|---|
| TabTableToolsDesign | tab |
| TabTableToolsLayout | tab |

## TabSetVideoTools

### TabVideoToolsDesign

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupAltText | group |  |  |
| GroupArrange | group |  |  |
| GroupMediaPreview | group |  |  |
| GroupVideoSize | group |  |  |
| GroupVideoStyles | group |  |  |
| GroupVideoToolsAdjust | group |  |  |
| AltTextPaneRibbon | toggleButton | GroupAltText |  |
| ObjectAlignMenu | menu | GroupArrange |  |
| ObjectBringForwardMenu | splitButton | GroupArrange |  |
| ObjectRotateGallery | gallery | GroupArrange |  |
| ObjectsArrangeMenu | menu | GroupArrange |  |
| ObjectSendBackwardMenu | splitButton | GroupArrange |  |
| ObjectsGroupMenu | menu | GroupArrange |  |
| SelectionPane | toggleButton | GroupArrange |  |
| AlignDistributeHorizontally | button | GroupArrange | ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectAlignMenu |
| ObjectBringForward | button | GroupArrange | ObjectBringForwardMenu |
| ObjectBringToFront | button | GroupArrange | ObjectBringForwardMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectRotateGallery |
| AlignDistributeHorizontally | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| AlignDistributeVertically | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectAlignMenu | menu | GroupArrange | ObjectsArrangeMenu |
| ObjectBringForward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectBringToFront | button | GroupArrange | ObjectsArrangeMenu |
| ObjectRotateGallery | gallery | GroupArrange | ObjectsArrangeMenu |
| ObjectRotationOptionsDialog | button | GroupArrange | ObjectsArrangeMenu > ObjectRotateGallery |
| ObjectsAlignBottomSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignCenterHorizontalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignLeftSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignMiddleVerticalSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRelativeToContainerSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignRightSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignSelectedSmart | toggleButton | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectsAlignTopSmart | button | GroupArrange | ObjectsArrangeMenu > ObjectAlignMenu |
| ObjectSendBackward | button | GroupArrange | ObjectsArrangeMenu |
| ObjectSendToBack | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsGroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsArrangeMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsArrangeMenu |
| SelectionPane | toggleButton | GroupArrange | ObjectsArrangeMenu |
| ObjectSendBackward | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectSendToBack | button | GroupArrange | ObjectSendBackwardMenu |
| ObjectsGroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsRegroup | button | GroupArrange | ObjectsGroupMenu |
| ObjectsUngroup | button | GroupArrange | ObjectsGroupMenu |
| MediaPlayPreview | button | GroupMediaPreview |  |
| ObjectSizeAndPositionDialog | button (dialogBoxLauncher) | GroupVideoSize |  |
| VideoCrop | toggleButton | GroupVideoSize |  |
| VideoHeight | control | GroupVideoSize |  |
| VideoWidth | control | GroupVideoSize |  |
| ObjectFormatDialog | button (dialogBoxLauncher) | GroupVideoStyles |  |
| VideoBorderGallery | gallery | GroupVideoStyles |  |
| VideoEffectsGallery | menu | GroupVideoStyles |  |
| VideoShapeGallery | gallery | GroupVideoStyles |  |
| VideoStylesGallery | gallery | GroupVideoStyles |  |
| EyedropperOutline | button | GroupVideoStyles | VideoBorderGallery |
| LineStylesDialog | button | GroupVideoStyles | VideoBorderGallery > OutlineDashesGallery |
| LineStylesDialog | button | GroupVideoStyles | VideoBorderGallery > OutlineWeightGallery |
| ObjectBorderOutlineColorMoreColorsDialog | button | GroupVideoStyles | VideoBorderGallery |
| OutlineDashesGallery | gallery | GroupVideoStyles | VideoBorderGallery |
| OutlineWeightGallery | gallery | GroupVideoStyles | VideoBorderGallery |
| _3DBevelOptionsDialog | button | GroupVideoStyles | VideoEffectsGallery > _3DBevelPictureTopGallery |
| _3DBevelOptionsDialog | button | GroupVideoStyles | VideoEffectsGallery > PictureEffectsPresetGallery |
| _3DBevelPictureTopGallery | gallery | GroupVideoStyles | VideoEffectsGallery |
| _3DRotationOptionsDialog | button | GroupVideoStyles | VideoEffectsGallery > PictureRotationGallery |
| EyedropperGlow | button | GroupVideoStyles | VideoEffectsGallery > PictureEffectsGlowGallery |
| GlowColorMoreColorsDialog | button | GroupVideoStyles | VideoEffectsGallery > PictureEffectsGlowGallery |
| GlowColorPicker | gallery | GroupVideoStyles | VideoEffectsGallery > PictureEffectsGlowGallery |
| GlowsMoreOptions | button | GroupVideoStyles | VideoEffectsGallery > PictureEffectsGlowGallery |
| PictureEffectsGlowGallery | gallery | GroupVideoStyles | VideoEffectsGallery |
| PictureEffectsPresetGallery | gallery | GroupVideoStyles | VideoEffectsGallery |
| PictureEffectsShadowGallery | gallery | GroupVideoStyles | VideoEffectsGallery |
| PictureEffectsSoftEdgesGallery | gallery | GroupVideoStyles | VideoEffectsGallery |
| PictureReflectionGallery | gallery | GroupVideoStyles | VideoEffectsGallery |
| PictureRotationGallery | gallery | GroupVideoStyles | VideoEffectsGallery |
| ReflectionsMoreOptions | button | GroupVideoStyles | VideoEffectsGallery > PictureReflectionGallery |
| ShadowOptionsDialog | button | GroupVideoStyles | VideoEffectsGallery > PictureEffectsShadowGallery |
| SoftEdgesMoreOptions | button | GroupVideoStyles | VideoEffectsGallery > PictureEffectsSoftEdgesGallery |
| VideoColorMenu | menu | GroupVideoToolsAdjust |  |
| VideoCorrectionsMenu | menu | GroupVideoToolsAdjust |  |
| VideoDesignResetSplitButton | splitButton | GroupVideoToolsAdjust |  |
| VideoPosterFrameGallery | menu | GroupVideoToolsAdjust |  |
| EyedropperRecolor | button | GroupVideoToolsAdjust | VideoColorMenu > RecolorColorPicker |
| PictureRecolorGallery | gallery | GroupVideoToolsAdjust | VideoColorMenu |
| PictureRecolorMoreColorsDialog | button | GroupVideoToolsAdjust | VideoColorMenu > RecolorColorPicker |
| RecolorColorPicker | gallery | GroupVideoToolsAdjust | VideoColorMenu |
| VideoColorDialog | button | GroupVideoToolsAdjust | VideoColorMenu |
| PictureBrightnessAndContrastGallery | gallery | GroupVideoToolsAdjust | VideoCorrectionsMenu |
| VideoCorrectionsDialog | button | GroupVideoToolsAdjust | VideoCorrectionsMenu |
| VideoDesignResetAndSize | button | GroupVideoToolsAdjust | VideoDesignResetSplitButton |
| VideoToolsDesignReset | button | GroupVideoToolsAdjust | VideoDesignResetSplitButton |
| VideoPosterFrameCurrent | button | GroupVideoToolsAdjust | VideoPosterFrameGallery |
| VideoPosterFrameFromFile | button | GroupVideoToolsAdjust | VideoPosterFrameGallery |
| VideoPosterFrameReset | button | GroupVideoToolsAdjust | VideoPosterFrameGallery |

### TabVideoToolsEdit

| idMso | Type | Group | Parent |
|---|---|---|---|
| GroupClosedCaptions | group |  |  |
| GroupMediaPreview | group |  |  |
| GroupSaveMedia | group |  |  |
| GroupVideoBookmark | group |  |  |
| GroupVideoEditing | group |  |  |
| GroupVideoOptions | group |  |  |
| ClosedCaptionSplitDropdown | splitButton | GroupClosedCaptions |  |
| InsertClosedCaption | button | GroupClosedCaptions | ClosedCaptionSplitDropdown |
| RemoveClosedCaption | button | GroupClosedCaptions | ClosedCaptionSplitDropdown |
| MediaPlayPreview | button | GroupMediaPreview |  |
| ObjectSaveMedia | button | GroupSaveMedia |  |
| VideoBookmarkAdd | button | GroupVideoBookmark |  |
| VideoBookmarkRemove | button | GroupVideoBookmark |  |
| FadeDurationLabelVideo | labelControl | GroupVideoEditing |  |
| VideoFadeInTime | control | GroupVideoEditing |  |
| VideoFadeOutTime | control | GroupVideoEditing |  |
| VideoToolsTrim | button | GroupVideoEditing |  |
| MediaClipLoopUntilStopped | checkBox | GroupVideoOptions |  |
| MediaClipToolsHideDuringShowVideo | checkBox | GroupVideoOptions |  |
| MoviePlayFullScreen | checkBox | GroupVideoOptions |  |
| MovieRewindAfterPlaying | checkBox | GroupVideoOptions |  |
| VideoStartGallery | dropDown | GroupVideoOptions |  |
| VideoVolumeGallery | gallery | GroupVideoOptions |  |

### (tab set definition)

| idMso | Type |
|---|---|
| TabVideoToolsDesign | tab |
| TabVideoToolsEdit | tab |

