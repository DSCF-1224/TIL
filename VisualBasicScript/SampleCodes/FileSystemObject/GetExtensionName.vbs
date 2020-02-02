Rem #===========================================================================
Rem # * warning
Rem #   * This Visual Basic Script was written in UTF-8
Rem # * target
Rem #   * To confirm what Function `GetExtensionName` returns
Rem # * tested argument of Function `GetExtensionName`
Rem #   * "E:\***\GitHub\VisualBasicScript\TestMethods\lipsum.txt"
Rem # * returned value of Function `GetExtensionName`
Rem #   * txt
Rem #===========================================================================

Rem # Require all variables to be explicitly declared
Option Explicit


Rem # FileSystemObject
DIM obj_fso
SET obj_fso = CreateObject("Scripting.FileSystemObject")


Rem # Variables for this VBScript
DIM str_path_work:  str_path_work = "E:\***\GitHub\VisualBasicScript\TestMethods\"
DIM str_GetExtensionName



REM #==========================================================================#
REM # Main Process                                                             #
REM #==========================================================================#

str_GetExtensionName = obj_fso.GetExtensionName( str_path_work & "lipsum.txt" )
Wscript.Echo str_GetExtensionName

Rem #===========================================================================
Rem # EOF
