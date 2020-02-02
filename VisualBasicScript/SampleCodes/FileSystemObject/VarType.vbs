Rem #===========================================================================
Rem # * warning
Rem #   * This Visual Basic Script was written in UTF-8
Rem # * target
Rem #   * To confirm what Function `VarType` returns
Rem #===========================================================================

Rem # Require all variables to be explicitly declared
Option Explicit


Rem # FileSystemObject
DIM obj_fso
SET obj_fso = CreateObject("Scripting.FileSystemObject")


Rem # Variables for this VBScript
DIM buf_target



Rem #===========================================================================
Rem # Main Process
Rem #===========================================================================

buf_target= true:                Call test_VarType( buf_target ) ' Function `VarType` returns `11`
buf_target= 1:                   Call test_VarType( buf_target ) ' Function `VarType` returns  `2`
buf_target= 1.0e+0:              Call test_VarType( buf_target ) ' Function `VarType` returns  `5`
buf_target= CByte( buf_target ): Call test_VarType( buf_target ) ' Function `VarType` returns `17`



Rem #===========================================================================
REM # Subroutine for this VBScript
Rem #===========================================================================

Sub test_VarType( target )
	Wscript.Echo _
		"[target] " & target & vbCrLf &_
		"[result] " &  VarType( target )
	Exit Sub
End Sub ' test_VarType

Rem #===========================================================================
Rem # EOF
