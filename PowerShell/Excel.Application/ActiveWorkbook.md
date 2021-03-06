# Excel.Application / ActiveWorkbook #

- [Excel.Application / ActiveWorkbook](#excelapplication--activeworkbook)
	- [how to get this information](#how-to-get-this-information)
	- [MemberType: Method](#membertype-method)
	- [MemberType: ParameterizedProperty](#membertype-parameterizedproperty)
	- [MemberType: Property](#membertype-property)

## how to get this information ##

```PowerShell
$obj_AppExcel                 = New-Object -ComObject Excel.Application
$obj_AppExcel.Visible         = $true
$obj_AppExcel.Workbooks.Add() > $null
$obj_ActiveWorkbook           = $obj_AppExcel.ActiveWorkbook
Get-Member -InputObject $obj_ActiveWorkbook > TIL\PowerShell\Excel.Application\ActiveWorkbook.md
```

TypeName: `System.__ComObject#{000208da-0000-0000-c000-000000000046}`

## MemberType: `Method` ##

|Name                               |Definition                         |
|:----------------------------------|:----------------------------------|
|`AcceptAllChanges`                 |void AcceptAllChanges (Variant, ...|
|`Activate`                         |void Activate ()                   |
|`AddToFavorites`                   |void AddToFavorites ()             |
|`ApplyTheme`                       |void ApplyTheme (string)           |
|`BreakLink`                        |void BreakLink (string, XlLinkType)|
|`CanCheckIn`                       |bool CanCheckIn ()                 |
|`ChangeFileAccess`                 |void ChangeFileAccess (XlFileAcc...|
|`ChangeLink`                       |void ChangeLink (string, string,...|
|`CheckIn`                          |void CheckIn (Variant, Variant, ...|
|`CheckInWithVersion`               |void CheckInWithVersion (Variant...|
|`Close`                            |void Close (Variant, Variant, Va...|
|`DeleteNumberFormat`               |void DeleteNumberFormat (string)   |
|`Dummy16`                          |void Dummy16 ()                    |
|`Dummy17`                          |void Dummy17 (int)                 |
|`Dummy26`                          |void Dummy26 ()                    |
|`Dummy27`                          |void Dummy27 ()                    |
|`EnableConnections`                |void EnableConnections ()          |
|`EndReview`                        |void EndReview ()                  |
|`ExclusiveAccess`                  |bool ExclusiveAccess ()            |
|`ExportAsFixedFormat`              |void ExportAsFixedFormat (XlFixe...|
|`FollowHyperlink`                  |void FollowHyperlink (string, Va...|
|`ForwardMailer`                    |void ForwardMailer ()              |
|`GetWorkflowTasks`                 |WorkflowTasks GetWorkflowTasks ()  |
|`GetWorkflowTemplates`             |WorkflowTemplates GetWorkflowTem...|
|`HighlightChangesOptions`          |void HighlightChangesOptions (Va...|
|`LinkInfo`                         |Variant LinkInfo (string, XlLink...|
|`LinkSources`                      |Variant LinkSources (Variant)      |
|`LockServerFile`                   |void LockServerFile ()             |
|`MergeWorkbook`                    |void MergeWorkbook (Variant)       |
|`NewWindow`                        |Window NewWindow ()                |
|`OpenLinks`                        |void OpenLinks (string, Variant,...|
|`PivotCaches`                      |PivotCaches PivotCaches ()         |
|`PivotTableWizard`                 |void PivotTableWizard (Variant, ...|
|`Post`                             |void Post (Variant)                |
|`PrintOut`                         |void PrintOut (Variant, Variant,...|
|`PrintPreview`                     |void PrintPreview (Variant)        |
|`Protect`                          |void Protect (Variant, Variant, ...|
|`ProtectSharing`                   |void ProtectSharing (Variant, Va...|
|`PurgeChangeHistoryNow`            |void PurgeChangeHistoryNow (int,...|
|`RecheckSmartTags`                 |void RecheckSmartTags ()           |
|`RefreshAll`                       |void RefreshAll ()                 |
|`RejectAllChanges`                 |void RejectAllChanges (Variant, ...|
|`ReloadAs`                         |void ReloadAs (MsoEncoding)        |
|`RemoveDocumentInformation`        |void RemoveDocumentInformation (...|
|`RemoveUser`                       |void RemoveUser (int)              |
|`Reply`                            |void Reply ()                      |
|`ReplyAll`                         |void ReplyAll ()                   |
|`ReplyWithChanges`                 |void ReplyWithChanges (Variant)    |
|`ResetColors`                      |void ResetColors ()                |
|`Route`                            |void Route ()                      |
|`RunAutoMacros`                    |void RunAutoMacros (XlRunAutoMacro)|
|`Save`                             |void Save ()                       |
|`SaveAs`                           |void SaveAs (Variant, Variant, V...|
|`SaveAsXMLData`                    |void SaveAsXMLData (string, XmlMap)|
|`SaveCopyAs`                       |void SaveCopyAs (Variant)          |
|`sblt`                             |void sblt (string)                 |
|`SendFaxOverInternet`              |void SendFaxOverInternet (Varian...|
|`SendForReview`                    |void SendForReview (Variant, Var...|
|`SendMail`                         |void SendMail (Variant, Variant,...|
|`SendMailer`                       |void SendMailer (Variant, XlPrio...|
|`SetLinkOnData`                    |void SetLinkOnData (string, Vari...|
|`SetPasswordEncryptionOptions`     |void SetPasswordEncryptionOption...|
|`ToggleFormsDesign`                |void ToggleFormsDesign ()          |
|`Unprotect`                        |void Unprotect (Variant)           |
|`UnprotectSharing`                 |void UnprotectSharing (Variant)    |
|`UpdateFromFile`                   |void UpdateFromFile ()             |
|`UpdateLink`                       |void UpdateLink (Variant, Variant) |
|`WebPagePreview`                   |void WebPagePreview ()             |
|`XmlImport`                        |XlXmlImportResult XmlImport (str...|
|`XmlImportXml`                     |XlXmlImportResult XmlImportXml (...|
|`_PrintOut`                        |void _PrintOut (Variant, Variant...|
|`_Protect`                         |void _Protect (Variant, Variant,...|
|`_ProtectSharing`                  |void _ProtectSharing (Variant, V...|
|`_SaveAs`                          |void _SaveAs (Variant, Variant, ...|
|`__PrintOut`                       |void __PrintOut (Variant, Varian...|

## MemberType: `ParameterizedProperty` ##

|Name           |Definition                                               |
|:--------------|:--------------------------------------------------------|
|`Colors`       |ParameterizedProperty Variant Colors (Variant) {get} {...|

## MemberType: `Property` ##

|Name                               |Definition                         |
|:----------------------------------|:----------------------------------|
|`AcceptLabelsInFormulas`           |bool AcceptLabelsInFormulas () {...|
|`AccuracyVersion`                  |int AccuracyVersion () {get} {set} |
|`ActiveChart`                      |Chart ActiveChart () {get}         |
|`ActiveSheet`                      |IDispatch ActiveSheet () {get}     |
|`ActiveSlicer`                     |Slicer ActiveSlicer () {get}       |
|`Application`                      |Application Application () {get}   |
|`Author`                           |string Author () {get} {set}       |
|`AutoUpdateFrequency`              |int AutoUpdateFrequency () {get}...|
|`AutoUpdateSaveChanges`            |bool AutoUpdateSaveChanges () {g...|
|`BuiltinDocumentProperties`        |IDispatch BuiltinDocumentPropert...|
|`CalculationVersion`               |int CalculationVersion () {get}    |
|`ChangeHistoryDuration`            |int ChangeHistoryDuration () {ge...|
|`Charts`                           |Sheets Charts () {get}             |
|`CheckCompatibility`               |bool CheckCompatibility () {get}...|
|`CodeName`                         |string CodeName () {get}           |
|`CommandBars`                      |CommandBars CommandBars () {get}   |
|`Comments`                         |string Comments () {get} {set}     |
|`ConflictResolution`               |XlSaveConflictResolution Conflic...|
|`Connections`                      |Connections Connections () {get}   |
|`ConnectionsDisabled`              |bool ConnectionsDisabled () {get}  |
|`Container`                        |IDispatch Container () {get}       |
|`ContentTypeProperties`            |MetaProperties ContentTypeProper...|
|`CreateBackup`                     |bool CreateBackup () {get}         |
|`Creator`                          |XlCreator Creator () {get}         |
|`CustomDocumentProperties`         |IDispatch CustomDocumentProperti...|
|`CustomViews`                      |CustomViews CustomViews () {get}   |
|`CustomXMLParts`                   |CustomXMLParts CustomXMLParts ()...|
|`Date1904`                         |bool Date1904 () {get} {set}       |
|`DefaultPivotTableStyle`           |Variant DefaultPivotTableStyle (...|
|`DefaultSlicerStyle`               |Variant DefaultSlicerStyle () {g...|
|`DefaultTableStyle`                |Variant DefaultTableStyle () {ge...|
|`DialogSheets`                     |Sheets DialogSheets () {get}       |
|`DisplayDrawingObjects`            |XlDisplayDrawingObjects DisplayD...|
|`DisplayInkComments`               |bool DisplayInkComments () {get}...|
|`DocumentInspectors`               |DocumentInspectors DocumentInspe...|
|`DocumentLibraryVersions`          |DocumentLibraryVersions Document...|
|`DoNotPromptForConvert`            |bool DoNotPromptForConvert () {g...|
|`EnableAutoRecover`                |bool EnableAutoRecover () {get} ...|
|`EncryptionProvider`               |string EncryptionProvider () {ge...|
|`EnvelopeVisible`                  |bool EnvelopeVisible () {get} {s...|
|`Excel4IntlMacroSheets`            |Sheets Excel4IntlMacroSheets () ...|
|`Excel4MacroSheets`                |Sheets Excel4MacroSheets () {get}  |
|`Excel8CompatibilityMode`          |bool Excel8CompatibilityMode () ...|
|`FileFormat`                       |XlFileFormat FileFormat () {get}   |
|`Final`                            |bool Final () {get} {set}          |
|`ForceFullCalculation`             |bool ForceFullCalculation () {ge...|
|`FullName`                         |string FullName () {get}           |
|`FullNameURLEncoded`               |string FullNameURLEncoded () {get} |
|`HasMailer`                        |bool HasMailer () {get} {set}      |
|`HasPassword`                      |bool HasPassword () {get}          |
|`HasRoutingSlip`                   |bool HasRoutingSlip () {get} {set} |
|`HasVBProject`                     |bool HasVBProject () {get}         |
|`HighlightChangesOnScreen`         |bool HighlightChangesOnScreen ()...|
|`HTMLProject`                      |HTMLProject HTMLProject () {get}   |
|`IconSets`                         |IconSets IconSets () {get}         |
|`InactiveListBorderVisible`        |bool InactiveListBorderVisible (...|
|`IsAddin`                          |bool IsAddin () {get} {set}        |
|`IsInplace`                        |bool IsInplace () {get}            |
|`KeepChangeHistory`                |bool KeepChangeHistory () {get} ...|
|`Keywords`                         |string Keywords () {get} {set}     |
|`ListChangesOnNewSheet`            |bool ListChangesOnNewSheet () {g...|
|`Mailer`                           |Mailer Mailer () {get}             |
|`Modules`                          |Sheets Modules () {get}            |
|`MultiUserEditing`                 |bool MultiUserEditing () {get}     |
|`Name`                             |string Name () {get}               |
|`Names`                            |Names Names () {get}               |
|`OnSave`                           |string OnSave () {get} {set}       |
|`OnSheetActivate`                  |string OnSheetActivate () {get} ...|
|`OnSheetDeactivate`                |string OnSheetDeactivate () {get...|
|`Parent`                           |IDispatch Parent () {get}          |
|`Password`                         |string Password () {get} {set}     |
|`PasswordEncryptionAlgorithm`      |string PasswordEncryptionAlgorit...|
|`PasswordEncryptionFileProperties` |bool PasswordEncryptionFilePrope...|
|`PasswordEncryptionKeyLength`      |int PasswordEncryptionKeyLength ...|
|`PasswordEncryptionProvider`       |string PasswordEncryptionProvide...|
|`Path`                             |string Path () {get}               |
|`Permission`                       |Permission Permission () {get}     |
|`PersonalViewListSettings`         |bool PersonalViewListSettings ()...|
|`PersonalViewPrintSettings`        |bool PersonalViewPrintSettings (...|
|`PrecisionAsDisplayed`             |bool PrecisionAsDisplayed () {ge...|
|`ProtectStructure`                 |bool ProtectStructure () {get}     |
|`ProtectWindows`                   |bool ProtectWindows () {get}       |
|`PublishObjects`                   |PublishObjects PublishObjects ()...|
|`ReadOnly`                         |bool ReadOnly () {get}             |
|`ReadOnlyRecommended`              |bool ReadOnlyRecommended () {get...|
|`RemovePersonalInformation`        |bool RemovePersonalInformation (...|
|`Research`                         |Research Research () {get}         |
|`RevisionNumber`                   |int RevisionNumber () {get}        |
|`Routed`                           |bool Routed () {get}               |
|`RoutingSlip`                      |RoutingSlip RoutingSlip () {get}   |
|`Saved`                            |bool Saved () {get} {set}          |
|`SaveLinkValues`                   |bool SaveLinkValues () {get} {set} |
|`ServerPolicy`                     |ServerPolicy ServerPolicy () {get} |
|`ServerViewableItems`              |ServerViewableItems ServerViewab...|
|`SharedWorkspace`                  |SharedWorkspace SharedWorkspace ...|
|`Sheets`                           |Sheets Sheets () {get}             |
|`ShowConflictHistory`              |bool ShowConflictHistory () {get...|
|`ShowPivotChartActiveFields`       |bool ShowPivotChartActiveFields ...|
|`ShowPivotTableFieldList`          |bool ShowPivotTableFieldList () ...|
|`Signatures`                       |SignatureSet Signatures () {get}   |
|`SlicerCaches`                     |SlicerCaches SlicerCaches () {get} |
|`SmartDocument`                    |SmartDocument SmartDocument () {...|
|`SmartTagOptions`                  |SmartTagOptions SmartTagOptions ...|
|`Styles`                           |Styles Styles () {get}             |
|`Subject`                          |string Subject () {get} {set}      |
|`Sync`                             |Sync Sync () {get}                 |
|`TableStyles`                      |TableStyles TableStyles () {get}   |
|`TemplateRemoveExtData`            |bool TemplateRemoveExtData () {g...|
|`Theme`                            |OfficeTheme Theme () {get}         |
|`Title`                            |string Title () {get} {set}        |
|`UpdateLinks`                      |XlUpdateLinks UpdateLinks () {ge...|
|`UpdateRemoteReferences`           |bool UpdateRemoteReferences () {...|
|`UserControl`                      |bool UserControl () {get} {set}    |
|`UserStatus`                       |Variant UserStatus () {get}        |
|`VBASigned`                        |bool VBASigned () {get}            |
|`VBProject`                        |VBProject VBProject () {get}       |
|`WebOptions`                       |WebOptions WebOptions () {get}     |
|`Windows`                          |Windows Windows () {get}           |
|`Worksheets`                       |Sheets Worksheets () {get}         |
|`WritePassword`                    |string WritePassword () {get} {s...|
|`WriteReserved`                    |bool WriteReserved () {get}        |
|`WriteReservedBy`                  |string WriteReservedBy () {get}    |
|`XmlMaps`                          |XmlMaps XmlMaps () {get}           |
|`XmlNamespaces`                    |XmlNamespaces XmlNamespaces () {...|
|`_CodeName`                        |string _CodeName () {get} {set}    |
|`_ReadOnlyRecommended`             |bool _ReadOnlyRecommended () {get} |

<!-- EOF -->
