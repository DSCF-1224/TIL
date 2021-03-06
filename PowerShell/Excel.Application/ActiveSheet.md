# Excel.Application / ActiveSheet #

- [Excel.Application / ActiveSheet](#excelapplication--activesheet)
  - [how to get this information](#how-to-get-this-information)
  - [MemberType: Method](#membertype-method)
  - [MemberType: ParameterizedProperty](#membertype-parameterizedproperty)
  - [MemberType: Property](#membertype-property)

## how to get this information ##

```PowerShell
$obj_AppExcel                 = New-Object -ComObject Excel.Application
$obj_AppExcel.Visible         = $true
$obj_AppExcel.Workbooks.Add() > $null
$obj_ActiveSheet             = $obj_AppExcel.ActiveSheet
Get-Member -InputObject $obj_ActiveSheet > TIL\PowerShell\Excel.Application\ActiveSheet.md
```

TypeName: `System.__ComObject#{000208d8-0000-0000-c000-000000000046}`

## MemberType: `Method` ##

|Name                  |Definition                        |
|:---------------------|:---------------------------------|
|`Activate`            |void Activate ()                  |
|`Arcs`                |IDispatch Arcs (Variant)          |
|`Buttons`             |IDispatch Buttons (Variant)       |
|`Calculate`           |void Calculate ()                 |
|`ChartObjects`        |IDispatch ChartObjects (Variant)  |
|`CheckBoxes`          |IDispatch CheckBoxes (Variant)    |
|`CheckSpelling`       |void CheckSpelling (Variant, Va...|
|`CircleInvalid`       |void CircleInvalid ()             |
|`ClearArrows`         |void ClearArrows ()               |
|`ClearCircles`        |void ClearCircles ()              |
|`Copy`                |void Copy (Variant, Variant)      |
|`Delete`              |void Delete ()                    |
|`DrawingObjects`      |IDispatch DrawingObjects (Variant)|
|`Drawings`            |IDispatch Drawings (Variant)      |
|`DropDowns`           |IDispatch DropDowns (Variant)     |
|`Evaluate`            |Variant Evaluate (Variant)        |
|`ExportAsFixedFormat` |void ExportAsFixedFormat (XlFix...|
|`GroupBoxes`          |IDispatch GroupBoxes (Variant)    |
|`GroupObjects`        |IDispatch GroupObjects (Variant)  |
|`Labels`              |IDispatch Labels (Variant)        |
|`Lines`               |IDispatch Lines (Variant)         |
|`ListBoxes`           |IDispatch ListBoxes (Variant)     |
|`Move`                |void Move (Variant, Variant)      |
|`OLEObjects`          |IDispatch OLEObjects (Variant)    |
|`OptionButtons`       |IDispatch OptionButtons (Variant) |
|`Ovals`               |IDispatch Ovals (Variant)         |
|`Paste`               |void Paste (Variant, Variant)     |
|`PasteSpecial`        |void PasteSpecial (Variant, Var...|
|`Pictures`            |IDispatch Pictures (Variant)      |
|`PivotTables`         |IDispatch PivotTables (Variant)   |
|`PivotTableWizard`    |PivotTable PivotTableWizard (Va...|
|`PrintOut`            |void PrintOut (Variant, Variant...|
|`PrintPreview`        |void PrintPreview (Variant)       |
|`Protect`             |void Protect (Variant, Variant,...|
|`Rectangles`          |IDispatch Rectangles (Variant)    |
|`ResetAllPageBreaks`  |void ResetAllPageBreaks ()        |
|`SaveAs`              |void SaveAs (string, Variant, V...|
|`Scenarios`           |IDispatch Scenarios (Variant)     |
|`ScrollBars`          |IDispatch ScrollBars (Variant)    |
|`Select`              |void Select (Variant)             |
|`SetBackgroundPicture`|void SetBackgroundPicture (string)|
|`ShowAllData`         |void ShowAllData ()               |
|`ShowDataForm`        |void ShowDataForm ()              |
|`Spinners`            |IDispatch Spinners (Variant)      |
|`TextBoxes`           |IDispatch TextBoxes (Variant)     |
|`Unprotect`           |void Unprotect (Variant)          |
|`XmlDataQuery`        |Range XmlDataQuery (string, Var...|
|`XmlMapQuery`         |Range XmlMapQuery (string, Vari...|
|`_CheckSpelling`      |void _CheckSpelling (Variant, V...|
|`_Evaluate`           |Variant _Evaluate (Variant)       |
|`_PasteSpecial`       |void _PasteSpecial (Variant, Va...|
|`_PrintOut`           |void _PrintOut (Variant, Varian...|
|`_Protect`            |void _Protect (Variant, Variant...|
|`_SaveAs`             |void _SaveAs (string, Variant, ...|
|`__PrintOut`          |void __PrintOut (Variant, Varia...|

## MemberType: `ParameterizedProperty` ##

|Name   |Definition                         |
|:------|:----------------------------------|
|`Range`|:Range Range (Variant, Variant) ...|

## MemberType: `Property` ##

|Name                               |Definition                        |
|:----------------------------------|:---------------------------------|
|`Application`                      |Application Application () {get}  |
|`AutoFilter`                       |AutoFilter AutoFilter () {get}    |
|`AutoFilterMode`                   |bool AutoFilterMode () {get} {s...|
|`Cells`                            |Range Cells () {get}              |
|`CircularReference`                |Range CircularReference () {get}  |
|`CodeName`                         |string CodeName () {get}          |
|`Columns`                          |Range Columns () {get}            |
|`Comments`                         |Comments Comments () {get}        |
|`ConsolidationFunction`            |XlConsolidationFunction Consoli...|
|`ConsolidationOptions`             |Variant ConsolidationOptions ()...|
|`ConsolidationSources`             |Variant ConsolidationSources ()...|
|`Creator`                          |XlCreator Creator () {get}        |
|`CustomProperties`                 |CustomProperties CustomProperti...|
|`DisplayAutomaticPageBreaks`       |bool DisplayAutomaticPageBreaks...|
|`DisplayPageBreaks`                |bool DisplayPageBreaks () {get}...|
|`DisplayRightToLeft`               |bool DisplayRightToLeft () {get...|
|`EnableAutoFilter`                 |bool EnableAutoFilter () {get} ...|
|`EnableCalculation`                |bool EnableCalculation () {get}...|
|`EnableFormatConditionsCalculation`|bool EnableFormatConditionsCalc...|
|`EnableOutlining`                  |bool EnableOutlining () {get} {...|
|`EnablePivotTable`                 |bool EnablePivotTable () {get} ...|
|`EnableSelection`                  |XlEnableSelection EnableSelecti...|
|`FilterMode`                       |bool FilterMode () {get}          |
|`HPageBreaks`                      |HPageBreaks HPageBreaks () {get}  |
|`Hyperlinks`                       |Hyperlinks Hyperlinks () {get}    |
|`Index`                            |int Index () {get}                |
|`ListObjects`                      |ListObjects ListObjects () {get}  |
|`MailEnvelope`                     |MsoEnvelope MailEnvelope () {get} |
|`Name`                             |string Name () {get} {set}        |
|`Names`                            |Names Names () {get}              |
|`Next`                             |IDispatch Next () {get}           |
|`OnCalculate`                      |string OnCalculate () {get} {set} |
|`OnData`                           |string OnData () {get} {set}      |
|`OnDoubleClick`                    |string OnDoubleClick () {get} {...|
|`OnEntry`                          |string OnEntry () {get} {set}     |
|`OnSheetActivate`                  |string OnSheetActivate () {get}...|
|`OnSheetDeactivate`                |string OnSheetDeactivate () {ge...|
|`Outline`                          |Outline Outline () {get}          |
|`PageSetup`                        |PageSetup PageSetup () {get}      |
|`Parent`                           |IDispatch Parent () {get}         |
|`Previous`                         |IDispatch Previous () {get}       |
|`PrintedCommentPages`              |int PrintedCommentPages () {get}  |
|`ProtectContents`                  |bool ProtectContents () {get}     |
|`ProtectDrawingObjects`            |bool ProtectDrawingObjects () {...|
|`Protection`                       |Protection Protection () {get}    |
|`ProtectionMode`                   |bool ProtectionMode () {get}      |
|`ProtectScenarios`                 |bool ProtectScenarios () {get}    |
|`QueryTables`                      |QueryTables QueryTables () {get}  |
|`Rows`                             |Range Rows () {get}               |
|`Scripts`                          |Scripts Scripts () {get}          |
|`ScrollArea`                       |string ScrollArea () {get} {set}  |
|`Shapes`                           |Shapes Shapes () {get}            |
|`SmartTags`                        |SmartTags SmartTags () {get}      |
|`Sort`                             |Sort Sort () {get}                |
|`StandardHeight`                   |double StandardHeight () {get}    |
|`StandardWidth`                    |double StandardWidth () {get} {...|
|`Tab`                              |Tab Tab () {get}                  |
|`TransitionExpEval`                |bool TransitionExpEval () {get}...|
|`TransitionFormEntry`              |bool TransitionFormEntry () {ge...|
|`Type`                             |XlSheetType Type () {get}         |
|`UsedRange`                        |Range UsedRange () {get}          |
|`Visible`                          |XlSheetVisibility Visible () {g...|
|`VPageBreaks`                      |VPageBreaks VPageBreaks () {get}  |
|`_CodeName`                        |string _CodeName () {get} {set}   |
|`_DisplayRightToLeft`              |int _DisplayRightToLeft () {get...|

<!-- EOF -->
