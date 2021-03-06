# Excel.Application #

- [Excel.Application](#excelapplication)
  - [how to get this information](#how-to-get-this-information)
  - [MemberType: Event](#membertype-event)
  - [MemberType: Method](#membertype-method)
  - [MemberType: ParameterizedProperty](#membertype-parameterizedproperty)
  - [MemberType: Property](#membertype-property)
  - [Samples](#samples)
    - [Open &amp; Close](#open-amp-close)

## how to get this information ##

```PowerShell
obj_AppExcel = New-Object -ComObject Excel.Application
Get-Member -MemberType All -InputObject $obj_AppExcel > PowerShell\Excel.Application.md
```

TypeName: `Microsoft.Office.Interop.Excel.ApplicationClass`

## MemberType: `Event` ##

|Name                                  |Definition              |
|:-------------------------------------|:-----------------------|
|`AfterCalculate`                      |Microsoft.Office.Inte...|
|`AppEvents_Event_NewWorkbook`         |Microsoft.Office.Inte...|
|`ProtectedViewWindowActivate`         |Microsoft.Office.Inte...|
|`ProtectedViewWindowBeforeClose`      |Microsoft.Office.Inte...|
|`ProtectedViewWindowBeforeEdit`       |Microsoft.Office.Inte...|
|`ProtectedViewWindowDeactivate`       |Microsoft.Office.Inte...|
|`ProtectedViewWindowOpen`             |Microsoft.Office.Inte...|
|`ProtectedViewWindowResize`           |Microsoft.Office.Inte...|
|`SheetActivate`                       |Microsoft.Office.Inte...|
|`SheetBeforeDoubleClick`              |Microsoft.Office.Inte...|
|`SheetBeforeRightClick`               |Microsoft.Office.Inte...|
|`SheetCalculate`                      |Microsoft.Office.Inte...|
|`SheetChange`                         |Microsoft.Office.Inte...|
|`SheetDeactivate`                     |Microsoft.Office.Inte...|
|`SheetFollowHyperlink`                |Microsoft.Office.Inte...|
|`SheetPivotTableAfterValueChange`     |Microsoft.Office.Inte...|
|`SheetPivotTableBeforeAllocateChanges`|Microsoft.Office.Inte...|
|`SheetPivotTableBeforeCommitChanges`  |Microsoft.Office.Inte...|
|`SheetPivotTableBeforeDiscardChanges` |Microsoft.Office.Inte...|
|`SheetPivotTableUpdate`               |Microsoft.Office.Inte...|
|`SheetSelectionChange`                |Microsoft.Office.Inte...|
|`WindowActivate`                      |Microsoft.Office.Inte...|
|`WindowDeactivate`                    |Microsoft.Office.Inte...|
|`WindowResize`                        |Microsoft.Office.Inte...|
|`WorkbookActivate`                    |Microsoft.Office.Inte...|
|`WorkbookAddinInstall`                |Microsoft.Office.Inte...|
|`WorkbookAddinUninstall`              |Microsoft.Office.Inte...|
|`WorkbookAfterSave`                   |Microsoft.Office.Inte...|
|`WorkbookAfterXmlExport`              |Microsoft.Office.Inte...|
|`WorkbookAfterXmlImport`              |Microsoft.Office.Inte...|
|`WorkbookBeforeClose`                 |Microsoft.Office.Inte...|
|`WorkbookBeforePrint`                 |Microsoft.Office.Inte...|
|`WorkbookBeforeSave`                  |Microsoft.Office.Inte...|
|`WorkbookBeforeXmlExport`             |Microsoft.Office.Inte...|
|`WorkbookBeforeXmlImport`             |Microsoft.Office.Inte...|
|`WorkbookDeactivate`                  |Microsoft.Office.Inte...|
|`WorkbookNewChart`                    |Microsoft.Office.Inte...|
|`WorkbookNewSheet`                    |Microsoft.Office.Inte...|
|`WorkbookOpen`                        |Microsoft.Office.Inte...|
|`WorkbookPivotTableCloseConnection`   |Microsoft.Office.Inte...|
|`WorkbookPivotTableOpenConnection`    |Microsoft.Office.Inte...|
|`WorkbookRowsetComplete`              |Microsoft.Office.Inte...|
|`WorkbookSync`                        |Microsoft.Office.Inte...|

## MemberType: `Method` ##

|Name                                         |Definition              |
|:--------------------------------------------|:-----------------------|
|`ActivateMicrosoftApp`                       |void ActivateMicrosof...|
|`AddChartAutoFormat`                         |void AddChartAutoForm...|
|`AddCustomList`                              |void AddCustomList(Sy...|
|`add_AfterCalculate`                         |void add_AfterCalcula...|
|`add_NewWorkbook`                            |void add_NewWorkbook(...|
|`add_ProtectedViewWindowActivate`            |void add_ProtectedVie...|
|`add_ProtectedViewWindowBeforeClose`         |void add_ProtectedVie...|
|`add_ProtectedViewWindowBeforeEdit`          |void add_ProtectedVie...|
|`add_ProtectedViewWindowDeactivate`          |void add_ProtectedVie...|
|`add_ProtectedViewWindowOpen`                |void add_ProtectedVie...|
|`add_ProtectedViewWindowResize`              |void add_ProtectedVie...|
|`add_SheetActivate`                          |void add_SheetActivat...|
|`add_SheetBeforeDoubleClick`                 |void add_SheetBeforeD...|
|`add_SheetBeforeRightClick`                  |void add_SheetBeforeR...|
|`add_SheetCalculate`                         |void add_SheetCalcula...|
|`add_SheetChange`                            |void add_SheetChange(...|
|`add_SheetDeactivate`                        |void add_SheetDeactiv...|
|`add_SheetFollowHyperlink`                   |void add_SheetFollowH...|
|`add_SheetPivotTableAfterValueChange`        |void add_SheetPivotTa...|
|`add_SheetPivotTableBeforeAllocateChanges`   |void add_SheetPivotTa...|
|`add_SheetPivotTableBeforeCommitChanges`     |void add_SheetPivotTa...|
|`add_SheetPivotTableBeforeDiscardChanges`    |void add_SheetPivotTa...|
|`add_SheetPivotTableUpdate`                  |void add_SheetPivotTa...|
|`add_SheetSelectionChange`                   |void add_SheetSelecti...|
|`add_WindowActivate`                         |void add_WindowActiva...|
|`add_WindowDeactivate`                       |void add_WindowDeacti...|
|`add_WindowResize`                           |void add_WindowResize...|
|`add_WorkbookActivate`                       |void add_WorkbookActi...|
|`add_WorkbookAddinInstall`                   |void add_WorkbookAddi...|
|`add_WorkbookAddinUninstall`                 |void add_WorkbookAddi...|
|`add_WorkbookAfterSave`                      |void add_WorkbookAfte...|
|`add_WorkbookAfterXmlExport`                 |void add_WorkbookAfte...|
|`add_WorkbookAfterXmlImport`                 |void add_WorkbookAfte...|
|`add_WorkbookBeforeClose`                    |void add_WorkbookBefo...|
|`add_WorkbookBeforePrint`                    |void add_WorkbookBefo...|
|`add_WorkbookBeforeSave`                     |void add_WorkbookBefo...|
|`add_WorkbookBeforeXmlExport`                |void add_WorkbookBefo...|
|`add_WorkbookBeforeXmlImport`                |void add_WorkbookBefo...|
|`add_WorkbookDeactivate`                     |void add_WorkbookDeac...|
|`add_WorkbookNewChart`                       |void add_WorkbookNewC...|
|`add_WorkbookNewSheet`                       |void add_WorkbookNewS...|
|`add_WorkbookOpen`                           |void add_WorkbookOpen...|
|`add_WorkbookPivotTableCloseConnection`      |void add_WorkbookPivo...|
|`add_WorkbookPivotTableOpenConnection`       |void add_WorkbookPivo...|
|`add_WorkbookRowsetComplete`                 |void add_WorkbookRows...|
|`add_WorkbookSync`                           |void add_WorkbookSync...|
|`Calculate`                                  |void Calculate(), voi...|
|`CalculateFull`                              |void CalculateFull(),...|
|`CalculateFullRebuild`                       |void CalculateFullReb...|
|`CalculateUntilAsyncQueriesDone`             |void CalculateUntilAs...|
|`CentimetersToPoints`                        |double CentimetersToP...|
|`CheckAbort`                                 |void CheckAbort(Syste...|
|`CheckSpelling`                              |bool CheckSpelling(st...|
|`ConvertFormula`                             |System.Object Convert...|
|`CreateObjRef`                               |System.Runtime.Remoti...|
|`DDEExecute`                                 |void DDEExecute(int C...|
|`DDEInitiate`                                |int DDEInitiate(strin...|
|`DDEPoke`                                    |void DDEPoke(int Chan...|
|`DDERequest`                                 |System.Object DDERequ...|
|`DDETerminate`                               |void DDETerminate(int...|
|`DeleteChartAutoFormat`                      |void DeleteChartAutoF...|
|`DeleteCustomList`                           |void DeleteCustomList...|
|`DisplayXMLSourcePane`                       |void DisplayXMLSource...|
|`DoubleClick`                                |void DoubleClick(), v...|
|`Dummy1`                                     |System.Object Dummy1(...|
|`Dummy10`                                    |bool Dummy10(System.O...|
|`Dummy11`                                    |void Dummy11(), void ...|
|`Dummy12`                                    |void Dummy12(Microsof...|
|`Dummy13`                                    |System.Object Dummy13...|
|`Dummy14`                                    |void Dummy14(), void ...|
|`Dummy2`                                     |System.Object Dummy2(...|
|`Dummy20`                                    |System.Object Dummy20...|
|`Dummy3`                                     |System.Object Dummy3(...|
|`Dummy4`                                     |System.Object Dummy4(...|
|`Dummy5`                                     |System.Object Dummy5(...|
|`Dummy6`                                     |System.Object Dummy6(...|
|`Dummy7`                                     |System.Object Dummy7(...|
|`Dummy8`                                     |System.Object Dummy8(...|
|`Dummy9`                                     |System.Object Dummy9(...|
|`Equals`                                     |bool Equals(System.Ob...|
|`Evaluate`                                   |System.Object Evaluat...|
|`ExecuteExcel4Macro`                         |System.Object Execute...|
|`FindFile`                                   |bool FindFile(), bool...|
|`GetCustomListContents`                      |System.Object GetCust...|
|`GetCustomListNum`                           |int GetCustomListNum(...|
|`GetHashCode`                                |int GetHashCode()       |
|`GetLifetimeService`                         |System.Object GetLife...|
|`GetOpenFilename`                            |System.Object GetOpen...|
|`GetPhonetic`                                |string GetPhonetic(Sy...|
|`GetSaveAsFilename`                          |System.Object GetSave...|
|`GetType`                                    |type GetType()          |
|`Goto`                                       |void Goto(System.Obje...|
|`Help`                                       |void Help(System.Obje...|
|`InchesToPoints`                             |double InchesToPoints...|
|`InitializeLifetimeService`                  |System.Object Initial...|
|`InputBox`                                   |System.Object InputBo...|
|`Intersect`                                  |Microsoft.Office.Inte...|
|`MacroOptions`                               |void MacroOptions(Sys...|
|`MacroOptions2`                              |void MacroOptions2(Sy...|
|`MailLogoff`                                 |void MailLogoff(), vo...|
|`MailLogon`                                  |void MailLogon(System...|
|`NextLetter`                                 |Microsoft.Office.Inte...|
|`OnKey`                                      |void OnKey(string Key...|
|`OnRepeat`                                   |void OnRepeat(string ...|
|`OnTime`                                     |void OnTime(System.Ob...|
|`OnUndo`                                     |void OnUndo(string Te...|
|`Quit`                                       |void Quit(), void _Ap...|
|`RecordMacro`                                |void RecordMacro(Syst...|
|`RegisterXLL`                                |bool RegisterXLL(stri...|
|`remove_AfterCalculate`                      |void remove_AfterCalc...|
|`remove_NewWorkbook`                         |void remove_NewWorkbo...|
|`remove_ProtectedViewWindowActivate`         |void remove_Protected...|
|`remove_ProtectedViewWindowBeforeClose`      |void remove_Protected...|
|`remove_ProtectedViewWindowBeforeEdit`       |void remove_Protected...|
|`remove_ProtectedViewWindowDeactivate`       |void remove_Protected...|
|`remove_ProtectedViewWindowOpen`             |void remove_Protected...|
|`remove_ProtectedViewWindowResize`           |void remove_Protected...|
|`remove_SheetActivate`                       |void remove_SheetActi...|
|`remove_SheetBeforeDoubleClick`              |void remove_SheetBefo...|
|`remove_SheetBeforeRightClick`               |void remove_SheetBefo...|
|`remove_SheetCalculate`                      |void remove_SheetCalc...|
|`remove_SheetChange`                         |void remove_SheetChan...|
|`remove_SheetDeactivate`                     |void remove_SheetDeac...|
|`remove_SheetFollowHyperlink`                |void remove_SheetFoll...|
|`remove_SheetPivotTableAfterValueChange`     |void remove_SheetPivo...|
|`remove_SheetPivotTableBeforeAllocateChanges`|void remove_SheetPivo...|
|`remove_SheetPivotTableBeforeCommitChanges`  |void remove_SheetPivo...|
|`remove_SheetPivotTableBeforeDiscardChanges` |void remove_SheetPivo...|
|`remove_SheetPivotTableUpdate`               |void remove_SheetPivo...|
|`remove_SheetSelectionChange`                |void remove_SheetSele...|
|`remove_WindowActivate`                      |void remove_WindowAct...|
|`remove_WindowDeactivate`                    |void remove_WindowDea...|
|`remove_WindowResize`                        |void remove_WindowRes...|
|`remove_WorkbookActivate`                    |void remove_WorkbookA...|
|`remove_WorkbookAddinInstall`                |void remove_WorkbookA...|
|`remove_WorkbookAddinUninstall`              |void remove_WorkbookA...|
|`remove_WorkbookAfterSave`                   |void remove_WorkbookA...|
|`remove_WorkbookAfterXmlExport`              |void remove_WorkbookA...|
|`remove_WorkbookAfterXmlImport`              |void remove_WorkbookA...|
|`remove_WorkbookBeforeClose`                 |void remove_WorkbookB...|
|`remove_WorkbookBeforePrint`                 |void remove_WorkbookB...|
|`remove_WorkbookBeforeSave`                  |void remove_WorkbookB...|
|`remove_WorkbookBeforeXmlExport`             |void remove_WorkbookB...|
|`remove_WorkbookBeforeXmlImport`             |void remove_WorkbookB...|
|`remove_WorkbookDeactivate`                  |void remove_WorkbookD...|
|`remove_WorkbookNewChart`                    |void remove_WorkbookN...|
|`remove_WorkbookNewSheet`                    |void remove_WorkbookN...|
|`remove_WorkbookOpen`                        |void remove_WorkbookO...|
|`remove_WorkbookPivotTableCloseConnection`   |void remove_WorkbookP...|
|`remove_WorkbookPivotTableOpenConnection`    |void remove_WorkbookP...|
|`remove_WorkbookRowsetComplete`              |void remove_WorkbookR...|
|`remove_WorkbookSync`                        |void remove_WorkbookS...|
|`Repeat`                                     |void Repeat(), void _...|
|`ResetTipWizard`                             |void ResetTipWizard()...|
|`Run`                                        |System.Object Run(Sys...|
|`Save`                                       |void Save(System.Obje...|
|`SaveWorkspace`                              |void SaveWorkspace(Sy...|
|`SendKeys`                                   |void SendKeys(System....|
|`SetDefaultChart`                            |void SetDefaultChart(...|
|`SharePointVersion`                          |int SharePointVersion...|
|`Support`                                    |System.Object Support...|
|`ToString`                                   |string ToString()       |
|`Undo`                                       |void Undo(), void _Ap...|
|`Union`                                      |Microsoft.Office.Inte...|
|`Volatile`                                   |void Volatile(System....|
|`Wait`                                       |bool Wait(System.Obje...|
|`_Evaluate`                                  |System.Object _Evalua...|
|`_FindFile`                                  |void _FindFile(), voi...|
|`_Run2`                                      |System.Object _Run2(S...|
|`_Wait`                                      |void _Wait(System.Obj...|
|`_WSFunction`                                |System.Object _WSFunc...|

## MemberType: `ParameterizedProperty` ##

|Name                 |Definition              |
|:--------------------|:-----------------------|
|`Caller`             |System.Object Caller(...|
|`ClipboardFormats`   |System.Object Clipboa...|
|`FileConverters`     |System.Object FileCon...|
|`FileDialog`         |Microsoft.Office.Core...|
|`International`      |System.Object Interna...|
|`PreviousSelections` |System.Object Previou...|
|`Range`              |Microsoft.Office.Inte...|
|`RegisteredFunctions`|System.Object Registe...|
|`ShortcutMenus`      |Microsoft.Office.Inte...|

## MemberType: `Property` ##

|Name                                         |Definition              |
|:--------------------------------------------|:-----------------------|
|`ActiveCell`                                 |Microsoft.Office.Inte...|
|`ActiveChart`                                |Microsoft.Office.Inte...|
|`ActiveDialog`                               |Microsoft.Office.Inte...|
|`ActiveEncryptionSession`                    |int ActiveEncryptionS...|
|`ActiveMenuBar`                              |Microsoft.Office.Inte...|
|`ActivePrinter`                              |string ActivePrinter ...|
|`ActiveProtectedViewWindow`                  |Microsoft.Office.Inte...|
|[`ActiveSheet`](ActiveSheet.md)              |System.Object ActiveS...|
|[`ActiveWindow`](ActiveWindow.md)            |Microsoft.Office.Inte...|
|[`ActiveWorkbook`](ActiveWorkbook.md)        |Microsoft.Office.Inte...|
|`AddIns`                                     |Microsoft.Office.Inte...|
|`AddIns2`                                    |Microsoft.Office.Inte...|
|`AlertBeforeOverwriting`                     |bool AlertBeforeOverw...|
|`AltStartupPath`                             |string AltStartupPath...|
|`AlwaysUseClearType`                         |bool AlwaysUseClearTy...|
|`AnswerWizard`                               |Microsoft.Office.Core...|
|`Application`                                |Microsoft.Office.Inte...|
|`ArbitraryXMLSupportAvailable`               |bool ArbitraryXMLSupp...|
|`AskToUpdateLinks`                           |bool AskToUpdateLinks...|
|`Assistance`                                 |Microsoft.Office.Core...|
|`Assistant`                                  |Microsoft.Office.Core...|
|`AutoCorrect`                                |Microsoft.Office.Inte...|
|`AutoFormatAsYouTypeReplaceHyperlinks`       |bool AutoFormatAsYouT...|
|`AutomationSecurity`                         |Microsoft.Office.Core...|
|`AutoPercentEntry`                           |bool AutoPercentEntry...|
|`AutoRecover`                                |Microsoft.Office.Inte...|
|`Build`                                      |int Build {get;}        |
|`CalculateBeforeSave`                        |bool CalculateBeforeS...|
|`Calculation`                                |Microsoft.Office.Inte...|
|`CalculationInterruptKey`                    |Microsoft.Office.Inte...|
|`CalculationState`                           |Microsoft.Office.Inte...|
|`CalculationVersion`                         |int CalculationVersio...|
|`CanPlaySounds`                              |bool CanPlaySounds {g...|
|`CanRecordSounds`                            |bool CanRecordSounds ...|
|`Caption`                                    |string Caption {get;s...|
|`CellDragAndDrop`                            |bool CellDragAndDrop ...|
|`Cells`                                      |Microsoft.Office.Inte...|
|`Charts`                                     |Microsoft.Office.Inte...|
|`ClusterConnector`                           |string ClusterConnect...|
|`ColorButtons`                               |bool ColorButtons {ge...|
|`Columns`                                    |Microsoft.Office.Inte...|
|`COMAddIns`                                  |Microsoft.Office.Core...|
|`CommandBars`                                |Microsoft.Office.Core...|
|`CommandUnderlines`                          |Microsoft.Office.Inte...|
|`ConstrainNumeric`                           |bool ConstrainNumeric...|
|`ControlCharacters`                          |bool ControlCharacter...|
|`CopyObjectsWithCells`                       |bool CopyObjectsWithC...|
|`Creator`                                    |Microsoft.Office.Inte...|
|`Cursor`                                     |Microsoft.Office.Inte...|
|`CursorMovement`                             |int CursorMovement {g...|
|`CustomListCount`                            |int CustomListCount {...|
|`CutCopyMode`                                |Microsoft.Office.Inte...|
|`DataEntryMode`                              |int DataEntryMode {ge...|
|`DDEAppReturnCode`                           |int DDEAppReturnCode ...|
|`DecimalSeparator`                           |string DecimalSeparat...|
|`DefaultFilePath`                            |string DefaultFilePat...|
|`DefaultSaveFormat`                          |Microsoft.Office.Inte...|
|`DefaultSheetDirection`                      |int DefaultSheetDirec...|
|`DefaultWebOptions`                          |Microsoft.Office.Inte...|
|`DeferAsyncQueries`                          |bool DeferAsyncQuerie...|
|`Dialogs`                                    |Microsoft.Office.Inte...|
|`DialogSheets`                               |Microsoft.Office.Inte...|
|`DisplayAlerts`                              |bool DisplayAlerts {g...|
|`DisplayClipboardWindow`                     |bool DisplayClipboard...|
|`DisplayCommentIndicator`                    |Microsoft.Office.Inte...|
|`DisplayDocumentActionTaskPane`              |bool DisplayDocumentA...|
|`DisplayDocumentInformationPanel`            |bool DisplayDocumentI...|
|`DisplayExcel4Menus`                         |bool DisplayExcel4Men...|
|`DisplayFormulaAutoComplete`                 |bool DisplayFormulaAu...|
|`DisplayFormulaBar`                          |bool DisplayFormulaBa...|
|`DisplayFullScreen`                          |bool DisplayFullScree...|
|`DisplayFunctionToolTips`                    |bool DisplayFunctionT...|
|`DisplayInfoWindow`                          |bool DisplayInfoWindo...|
|`DisplayInsertOptions`                       |bool DisplayInsertOpt...|
|`DisplayNoteIndicator`                       |bool DisplayNoteIndic...|
|`DisplayPasteOptions`                        |bool DisplayPasteOpti...|
|`DisplayRecentFiles`                         |bool DisplayRecentFil...|
|`DisplayScrollBars`                          |bool DisplayScrollBar...|
|`DisplayStatusBar`                           |bool DisplayStatusBar...|
|`Dummy101`                                   |System.Object Dummy10...|
|`Dummy22`                                    |bool Dummy22 {get;set;} |
|`Dummy23`                                    |bool Dummy23 {get;set;} |
|`EditDirectlyInCell`                         |bool EditDirectlyInCe...|
|`EnableAnimations`                           |bool EnableAnimations...|
|`EnableAutoComplete`                         |bool EnableAutoComple...|
|`EnableCancelKey`                            |Microsoft.Office.Inte...|
|`EnableEvents`                               |bool EnableEvents {ge...|
|`EnableLargeOperationAlert`                  |bool EnableLargeOpera...|
|`EnableLivePreview`                          |bool EnableLivePrevie...|
|`EnableSound`                                |bool EnableSound {get...|
|`EnableTipWizard`                            |bool EnableTipWizard ...|
|`ErrorCheckingOptions`                       |Microsoft.Office.Inte...|
|`Excel4IntlMacroSheets`                      |Microsoft.Office.Inte...|
|`Excel4MacroSheets`                          |Microsoft.Office.Inte...|
|`ExtendList`                                 |bool ExtendList {get;...|
|`FeatureInstall`                             |Microsoft.Office.Core...|
|`FileExportConverters`                       |Microsoft.Office.Inte...|
|`FileFind`                                   |Microsoft.Office.Core...|
|`FileSearch`                                 |Microsoft.Office.Core...|
|`FileValidation`                             |Microsoft.Office.Core...|
|`FileValidationPivot`                        |Microsoft.Office.Inte...|
|`FindFormat`                                 |Microsoft.Office.Inte...|
|`FixedDecimal`                               |bool FixedDecimal {ge...|
|`FixedDecimalPlaces`                         |int FixedDecimalPlace...|
|`FormulaBarHeight`                           |int FormulaBarHeight ...|
|`GenerateGetPivotData`                       |bool GenerateGetPivot...|
|`GenerateTableRefs`                          |Microsoft.Office.Inte...|
|`Height`                                     |double Height {get;set;}|
|`HighQualityModeForGraphics`                 |bool HighQualityModeF...|
|`Hinstance`                                  |int Hinstance {get;}    |
|`HinstancePtr`                               |System.Object Hinstan...|
|`Hwnd`                                       |int Hwnd {get;}         |
|`IgnoreRemoteRequests`                       |bool IgnoreRemoteRequ...|
|`Interactive`                                |bool Interactive {get...|
|`IsSandboxed`                                |bool IsSandboxed {get;} |
|`Iteration`                                  |bool Iteration {get;s...|
|`LanguageSettings`                           |Microsoft.Office.Core...|
|`LargeButtons`                               |bool LargeButtons {ge...|
|`LargeOperationCellThousandCount`            |int LargeOperationCel...|
|`Left`                                       |double Left {get;set;}  |
|`LibraryPath`                                |string LibraryPath {g...|
|`MailSession`                                |System.Object MailSes...|
|`MailSystem`                                 |Microsoft.Office.Inte...|
|`MapPaperSize`                               |bool MapPaperSize {ge...|
|`MathCoprocessorAvailable`                   |bool MathCoprocessorA...|
|`MaxChange`                                  |double MaxChange {get...|
|`MaxIterations`                              |int MaxIterations {ge...|
|`MeasurementUnit`                            |int MeasurementUnit {...|
|`MemoryFree`                                 |int MemoryFree {get;}   |
|`MemoryTotal`                                |int MemoryTotal {get;}  |
|`MemoryUsed`                                 |int MemoryUsed {get;}   |
|`MenuBars`                                   |Microsoft.Office.Inte...|
|`Modules`                                    |Microsoft.Office.Inte...|
|`MouseAvailable`                             |bool MouseAvailable {...|
|`MoveAfterReturn`                            |bool MoveAfterReturn ...|
|`MoveAfterReturnDirection`                   |Microsoft.Office.Inte...|
|`MultiThreadedCalculation`                   |Microsoft.Office.Inte...|
|`Name`                                       |string Name {get;}      |
|`Names`                                      |Microsoft.Office.Inte...|
|`NetworkTemplatesPath`                       |string NetworkTemplat...|
|`NewWorkbook`                                |Microsoft.Office.Core...|
|`ODBCErrors`                                 |Microsoft.Office.Inte...|
|`ODBCTimeout`                                |int ODBCTimeout {get;...|
|`OLEDBErrors`                                |Microsoft.Office.Inte...|
|`OnCalculate`                                |string OnCalculate {g...|
|`OnData`                                     |string OnData {get;set;}|
|`OnDoubleClick`                              |string OnDoubleClick ...|
|`OnEntry`                                    |string OnEntry {get;s...|
|`OnSheetActivate`                            |string OnSheetActivat...|
|`OnSheetDeactivate`                          |string OnSheetDeactiv...|
|`OnWindow`                                   |string OnWindow {get;...|
|`OperatingSystem`                            |string OperatingSyste...|
|`OrganizationName`                           |string OrganizationNa...|
|`Parent`                                     |Microsoft.Office.Inte...|
|`Path`                                       |string Path {get;}      |
|`PathSeparator`                              |string PathSeparator ...|
|`PivotTableSelection`                        |bool PivotTableSelect...|
|`PrintCommunication`                         |bool PrintCommunicati...|
|`ProductCode`                                |string ProductCode {g...|
|`PromptForSummaryInfo`                       |bool PromptForSummary...|
|`ProtectedViewWindows`                       |Microsoft.Office.Inte...|
|`Quitting`                                   |bool Quitting {get;}    |
|`Ready`                                      |bool Ready {get;}       |
|`RecentFiles`                                |Microsoft.Office.Inte...|
|`RecordRelative`                             |bool RecordRelative {...|
|`ReferenceStyle`                             |Microsoft.Office.Inte...|
|`ReplaceFormat`                              |Microsoft.Office.Inte...|
|`RollZoom`                                   |bool RollZoom {get;set;}|
|`Rows`                                       |Microsoft.Office.Inte...|
|`RTD`                                        |Microsoft.Office.Inte...|
|`SaveISO8601Dates`                           |bool SaveISO8601Dates...|
|`ScreenUpdating`                             |bool ScreenUpdating {...|
|`Selection`                                  |System.Object Selecti...|
|`Sheets`                                     |Microsoft.Office.Inte...|
|`SheetsInNewWorkbook`                        |int SheetsInNewWorkbo...|
|`ShowChartTipNames`                          |bool ShowChartTipName...|
|`ShowChartTipValues`                         |bool ShowChartTipValu...|
|`ShowDevTools`                               |bool ShowDevTools {ge...|
|`ShowMenuFloaties`                           |bool ShowMenuFloaties...|
|`ShowSelectionFloaties`                      |bool ShowSelectionFlo...|
|`ShowStartupDialog`                          |bool ShowStartupDialo...|
|`ShowToolTips`                               |bool ShowToolTips {ge...|
|`ShowWindowsInTaskbar`                       |bool ShowWindowsInTas...|
|`SmartArtColors`                             |Microsoft.Office.Core...|
|`SmartArtLayouts`                            |Microsoft.Office.Core...|
|`SmartArtQuickStyles`                        |Microsoft.Office.Core...|
|`SmartTagRecognizers`                        |Microsoft.Office.Inte...|
|`Speech`                                     |Microsoft.Office.Inte...|
|`SpellingOptions`                            |Microsoft.Office.Inte...|
|`StandardFont`                               |string StandardFont {...|
|`StandardFontSize`                           |double StandardFontSi...|
|`StartupPath`                                |string StartupPath {g...|
|`StatusBar`                                  |System.Object StatusB...|
|`TemplatesPath`                              |string TemplatesPath ...|
|`ThisCell`                                   |Microsoft.Office.Inte...|
|`ThisWorkbook`                               |Microsoft.Office.Inte...|
|`ThousandsSeparator`                         |string ThousandsSepar...|
|`Toolbars`                                   |Microsoft.Office.Inte...|
|`Top`                                        |double Top {get;set;}   |
|`TransitionMenuKey`                          |string TransitionMenu...|
|`TransitionMenuKeyAction`                    |int TransitionMenuKey...|
|`TransitionNavigKeys`                        |bool TransitionNavigK...|
|`UILanguage`                                 |int UILanguage {get;s...|
|`UsableHeight`                               |double UsableHeight {...|
|`UsableWidth`                                |double UsableWidth {g...|
|`UseClusterConnector`                        |bool UseClusterConnec...|
|`UsedObjects`                                |Microsoft.Office.Inte...|
|`UserControl`                                |bool UserControl {get...|
|`UserLibraryPath`                            |string UserLibraryPat...|
|`UserName`                                   |string UserName {get;...|
|`UseSystemSeparators`                        |bool UseSystemSeparat...|
|`Value`                                      |string Value {get;}     |
|`VBE`                                        |Microsoft.Vbe.Interop...|
|`Version`                                    |string Version {get;}   |
|`Visible`                                    |bool Visible {get;set;} |
|`WarnOnFunctionNameConflict`                 |bool WarnOnFunctionNa...|
|`Watches`                                    |Microsoft.Office.Inte...|
|`Width`                                      |double Width {get;set;} |
|`Windows`                                    |Microsoft.Office.Inte...|
|`WindowsForPens`                             |bool WindowsForPens {...|
|`WindowState`                                |Microsoft.Office.Inte...|
|[`Workbooks`](Workbooks.md)                  |Microsoft.Office.Inte...|
|`WorksheetFunction`                          |Microsoft.Office.Inte...|
|`Worksheets`                                 |Microsoft.Office.Inte...|
|`_Default`                                   |string _Default {get;}  |

## Samples ##

### Open &amp; Close ###

```PowerShell
#===============================================================================
# reference
# - https://qiita.com/meteoride/items/4a905d999bb268ffeab8
# - https://qiita.com/tomoko523/items/a70bfbe65fca0b547f5c
#===============================================================================

Add-Type -AssemblyName System.Windows.Forms

#===============================================================================

function IsExistExcelProcess ([System.Double] $seconds_stoppting)
{
	Start-Sleep -Seconds $seconds_stoppting

	foreach ($iter_process in Get-Process)
	{
		if ($iter_process.ProcessName -eq "EXCEL")
		{
			return $true
		}
	}

	return $false
}

#===============================================================================

function MsgBoxCheckPoint ([System.String] $str_message)
{
	[void]
		[System.Windows.Forms.MessageBox]::Show(
			$str_message,
			"Check Point",
			[System.Windows.Forms.MessageBoxButtons]::OK,
			[System.Windows.Forms.MessageBoxIcon]::Information
		)
}

#===============================================================================

# STEP.01
# create a new instance to operate `Excel`
$obj_AppExcel = New-Object -ComObject Excel.Application

# STEP.02
# set the properties of `Excel`
$obj_AppExcel.Visible = $true

# STEP.03
# add a new `Worksheet` of `Excel`
[void] $obj_AppExcel.Workbooks.Add()

# STEP.04
# Quit thee application `Excel`
$obj_AppExcel.Quit()

# STEP.05
# kill the instance to operate `Excel`
[void] [System.Runtime.InteropServices.Marshal]::ReleaseComObject($obj_AppExcel)
[void] [System.GC]::Collect($null)

if ( IsExistExcelProcess(4.0) )
{
	[void]
		[System.Windows.Forms.MessageBox]::Show(
			"Failed to kill the 'Excel' process !",
			$MyInvocation.MyCommand.Name,
			[System.Windows.Forms.MessageBoxButtons]::OK,
			[System.Windows.Forms.MessageBoxIcon]::Asterisk
		)
}
else
{
	MsgBoxCheckPoint("There is no 'ComObject' to operate 'Excel'.") > $null
}

MsgBoxCheckPoint("It reached the end of the script !") > $null

#===============================================================================
# EOF
```

<!-- EOF -->
