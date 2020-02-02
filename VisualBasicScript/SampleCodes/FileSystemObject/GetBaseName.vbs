Rem #===========================================================================
Rem # * warning
Rem #   * This Visual Basic Script was written in UTF-8
Rem # * target
Rem #   * To confirm what Function `GetBaseName` returns
Rem # * tested argument of Function `GetBaseName`
Rem #   * "E:\***\GitHub\VisualBasicScript\TestMethods\lipsum.txt"
Rem # * returned value of Function `GetBaseName`
Rem #   * lipsum
Rem #===========================================================================

Rem # Require all variables to be explicitly declared
Option Explicit


Rem # FileSystemObject
Dim obj_fso
Set obj_fso = CreateObject("Scripting.FileSystemObject")


Rem # Variables for this VBScript
DIM str_path_work:  str_path_work = "E:\***\GitHub\VisualBasicScript\TestMethods\"
Dim str_GetBaseName



Rem #===========================================================================
Rem # Main Process
Rem #===========================================================================

str_GetBaseName = obj_fso.GetBaseName( str_path_work & "lipsum.txt" )
Wscript.Echo str_GetBaseName

Rem #===========================================================================
Rem # EOF
