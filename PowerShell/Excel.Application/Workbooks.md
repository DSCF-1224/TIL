# Excel.Application #

- [Excel.Application](#excelapplication)
	- [how to get this information](#how-to-get-this-information)
	- [MemberType: Method](#membertype-method)
	- [MemberType: ParameterizedProperty](#membertype-parameterizedproperty)
	- [MemberType: Property](#membertype-property)

## how to get this information ##

```PowerShell
$obj_AppExcel = New-Object -ComObject Excel.Application
Get-Member -InputObject $obj_AppExcel.Workbooks
```

TypeName: `System.__ComObject#{000208db-0000-0000-c000-000000000046}`

## MemberType: `Method` ##

|Name           |Definition                                             |
|:--------------|:------------------------------------------------------|
|`Add`          |Workbook Add (Variant)                                 |
|`CanCheckOut`  |bool CanCheckOut (string)                              |
|`CheckOut`     |void CheckOut (string)                                 |
|`Close`        |void Close ()                                          |
|`Open`         |Workbook Open (string, Variant, Variant, Variant, Va...|
|`OpenDatabase` |Workbook OpenDatabase (string, Variant, Variant, Var...|
|`OpenText`     |void OpenText (string, Variant, Variant, Variant, Xl...|
|`OpenXML`      |Workbook OpenXML (string, Variant, Variant)            |
|`_Open`        |Workbook _Open (string, Variant, Variant, Variant, V...|
|`_OpenText`    |void _OpenText (string, Variant, Variant, Variant, X...|
|`_OpenXML`     |Workbook _OpenXML (string, Variant)                    |
|`__OpenText`   |void __OpenText (string, Variant, Variant, Variant, ...|

## MemberType: `ParameterizedProperty` ##

|Name           |Definition                                             |
|:--------------|:------------------------------------------------------|
|`Item`         |ParameterizedProperty Workbook Item (Variant) {get}    |
|`_Default`     |ParameterizedProperty Workbook _Default (Variant) {get}|

## MemberType: `Property` ##

|Name         |Definition                      |
|:------------|:-------------------------------|
|`Application`|Application Application () {get}|
|`Count`      |int Count () {get}              |
|`Creator`    |XlCreator Creator () {get}      |
|`Parent`     |IDispatch Parent () {get}       |
|`_NewEnum`   |IUnknown _NewEnum () {get}      |

<!-- EOF -->
