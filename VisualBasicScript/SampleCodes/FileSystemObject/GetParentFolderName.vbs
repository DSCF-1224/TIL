Rem #===========================================================================
Rem # * warning
Rem #   * This Visual Basic Script was written in UTF-8
Rem # * target
Rem #   * To confirm what Function `GetParentFolderName` returns
Rem # * tested argument of Function `GetParentFolderName`
Rem #   * "E:\***\GitHub\VisualBasicScript\TestMethods\lipsum.txt"
Rem # * returned value of Function `GetParentFolderName`
Rem #   * "E:\***\GitHub\VisualBasicScript\TestMethods"
Rem #===========================================================================

Rem # Require all variables to be explicitly declared
Option Explicit


Rem # FileSystemObject
DIM obj_fso
SET obj_fso = CreateObject("Scripting.FileSystemObject")


Rem # Variables for this VBScript
DIM str_path_work:  str_path_work = "E:\***\GitHub\VisualBasicScript\TestMethods\"
DIM str_GetParentFolderName



Rem #===========================================================================
Rem # Main Process
Rem #===========================================================================

str_GetParentFolderName = obj_fso.GetParentFolderName( str_path_work & "lipsum.txt" )
Wscript.Echo str_GetParentFolderName

Rem #===========================================================================
Rem # EOF
