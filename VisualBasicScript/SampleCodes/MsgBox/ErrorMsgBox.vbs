Rem #===========================================================================
Rem # * warhing
Rem #   * This Visual Basic Script was written in UTF-8
Rem #   * string `title_VBScript` is not defined in this source file
Rem # * target
Rem #   * show error message box
Rem #===========================================================================

Function ErrorMsgBox (ByVal, message, ByVal mode)

	ErrorMsgBox = MsgBox(message, vbOKOnly + vbCritical, title_VBScript)

	If mode Then
		WScript.Quit
	End If

	Exit Function

End Function

Rem #===========================================================================
Rem # EOF
