# Excel.Application / ActiveWindow #

- [Excel.Application / ActiveWindow](#excelapplication--activewindow)
  - [how to get this information](#how-to-get-this-information)
  - [MemberType: Method](#membertype-method)
  - [MemberType: Property](#membertype-property)

## how to get this information ##

```PowerShell
$obj_AppExcel                 = New-Object -ComObject Excel.Application
$obj_AppExcel.Visible         = $true
$obj_AppExcel.Workbooks.Add() > $null
$obj_ActiveWindow             = $obj_AppExcel.ActiveWindow
Get-Member -InputObject $obj_ActiveWindow > TIL\PowerShell\Excel.Application\ActiveWindow.md
```

TypeName: `System.__ComObject#{00020893-0000-0000-c000-000000000046}`c
|`Activate`             |Variant Activate ()                                 |
|`ActivateNext`         |Variant ActivateNext ()                             |
|`ActivatePrevious`     |Variant ActivatePrevious ()                         |
|`Close`                |bool Close (Variant, Variant, Variant)              |
|`LargeScroll`          |Variant LargeScroll (Variant, Variant, Variant, V...|
|`NewWindow`            |Window NewWindow ()                                 |
|`PointsToScreenPixelsX`|int PointsToScreenPixelsX (int)                     |
|`PointsToScreenPixelsY`|int PointsToScreenPixelsY (int)                     |
|`PrintOut`             |Variant PrintOut (Variant, Variant, Variant, Vari...|
|`PrintPreview`         |Variant PrintPreview (Variant)                      |
|`RangeFromPoint`       |IDispatch RangeFromPoint (int, int)                 |
|`ScrollIntoView`       |void ScrollIntoView (int, int, int, int, Variant)   |
|`ScrollWorkbookTabs`   |Variant ScrollWorkbookTabs (Variant, Variant)       |
|`SmallScroll`          |Variant SmallScroll (Variant, Variant, Variant, V...|
|`_PrintOut`            |Variant _PrintOut (Variant, Variant, Variant, Var...|

## MemberType: `Property` ##

|Name                        |Definition                                          |
|:---------------------------|:---------------------------------------------------|
|`ActiveCell`                |Range ActiveCell () {get}                           |
|`ActiveChart`               |Chart ActiveChart () {get}                          |
|`ActivePane`                |Pane ActivePane () {get}                            |
|`ActiveSheet`               |IDispatch ActiveSheet () {get}                      |
|`ActiveSheetView`           |IDispatch ActiveSheetView () {get}                  |
|`Application`               |Application Application () {get}                    |
|`AutoFilterDateGrouping`    |bool AutoFilterDateGrouping () {get} {set}          |
|`Caption`                   |Variant Caption () {get} {set}                      |
|`Creator`                   |XlCreator Creator () {get}                          |
|`DisplayFormulas`           |bool DisplayFormulas () {get} {set}                 |
|`DisplayGridlines`          |bool DisplayGridlines () {get} {set}                |
|`DisplayHeadings`           |bool DisplayHeadings () {get} {set}                 |
|`DisplayHorizontalScrollBar`|bool DisplayHorizontalScrollBar () {get} {set}      |
|`DisplayOutline`            |bool DisplayOutline () {get} {set}                  |
|`DisplayRightToLeft`        |bool DisplayRightToLeft () {get} {set}              |
|`DisplayRuler`              |bool DisplayRuler () {get} {set}                    |
|`DisplayVerticalScrollBar`  |bool DisplayVerticalScrollBar () {get} {set}        |
|`DisplayWhitespace`         |bool DisplayWhitespace () {get} {set}               |
|`DisplayWorkbookTabs`       |bool DisplayWorkbookTabs () {get} {set}             |
|`DisplayZeros`              |bool DisplayZeros () {get} {set}                    |
|`EnableResize`              |bool EnableResize () {get} {set}                    |
|`FreezePanes`               |bool FreezePanes () {get} {set}                     |
|`GridlineColor`             |int GridlineColor () {get} {set}                    |
|`GridlineColorIndex`        |XlColorIndex GridlineColorIndex () {get} {set}      |
|`Height`                    |double Height () {get} {set}                        |
|`Index`                     |int Index () {get}                                  |
|`Left`                      |double Left () {get} {set}                          |
|`OnWindow`                  |string OnWindow () {get} {set}                      |
|`Panes`                     |Panes Panes () {get}                                |
|`Parent`                    |IDispatch Parent () {get}                           |
|`RangeSelection`            |Range RangeSelection () {get}                       |
|`ScrollColumn`              |int ScrollColumn () {get} {set}                     |
|`ScrollRow`                 |int ScrollRow () {get} {set}                        |
|`SelectedSheets`            |Sheets SelectedSheets () {get}                      |
|`Selection`                 |IDispatch Selection () {get}                        |
|`SheetViews`                |SheetViews SheetViews () {get}                      |
|`Split`                     |bool Split () {get} {set}                           |
|`SplitColumn`               |int SplitColumn () {get} {set}                      |
|`SplitHorizontal`           |double SplitHorizontal () {get} {set}               |
|`SplitRow`                  |int SplitRow () {get} {set}                         |
|`SplitVertical`             |double SplitVertical () {get} {set}                 |
|`TabRatio`                  |double TabRatio () {get} {set}                      |
|`Top`                       |double Top () {get} {set}                           |
|`Type`                      |XlWindowType Type () {get}                          |
|`UsableHeight`              |double UsableHeight () {get}                        |
|`UsableWidth`               |double UsableWidth () {get}                         |
|`View`                      |XlWindowView View () {get} {set}                    |
|`Visible`                   |bool Visible () {get} {set}                         |
|`VisibleRange`              |Range VisibleRange () {get}                         |
|`Width`                     |double Width () {get} {set}                         |
|`WindowNumber`              |int WindowNumber () {get}                           |
|`WindowState`               |XlWindowState WindowState () {get} {set}            |
|`Zoom`                      |Variant Zoom () {get} {set}                         |
|`_DisplayRightToLeft`       |bool _DisplayRightToLeft () {get} {set}             |

<!-- EOF -->
