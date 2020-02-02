Rem #===========================================================================
Rem # * warning
Rem #   * This Visual Basic Script was written in UTF-8
Rem #   * Function `ErrorMsgBox` is not defined here
Rem #   * This `Function` is written in "MsgBox\ErrorMsgBox.vbs"
Rem # * target
Rem #   * Using `FormatNumber` function filling zero
Rem #===========================================================================

Function CStrFillZero( val, len_max )

	Rem # val     : a integer to convert to string filling zero
	Rem # len_max : maximum length of string to output

	Dim len_CStrFillZero
	Dim str_CStrFillZero
	Dim str_name_Function: str_name_Function = "CStrFillZero"

	Rem # STEP.01
	Rem # check the value of arguments
	If len_max <= 0 Then
		Rem # BAD_END
		ErrorMsgBox _
			"[Function]" _
			& vbCrLf & str_name_Function _
			& vbCrLf & "[Status]" _
			& vbCrLf & "Failed to convert the number to string filling zero." _
			& vbCrLf & "Because the length of string was less than or equal to ZERO." _
			,_
			True
	End If

	Rem # STEP.02
	Rem # filling zero as required
	str_CStrFillZero = CStr( val )
	len_CStrFillZero = Len( str_CStrFillZero )

	If len_CStrFillZero > len_max Then
		Rem # BAD_END
		ErrorMsgBox _
			"[Function]" _
			& vbCrLf & str_name_Function _
			& vbCrLf & "[Status]" _
			& vbCrLf & "converted string is too long to fill zero" _
			,_
			True
	ElseIf len_CStrFillZero < len_max Then
		CStrFillZero = Replace( Space( len_max - len_CStrFillZero ) & str_CStrFillZero, Space(1), CStr(0) )
	Else
		CStrFillZero = str_CStrFillZero
	End If

	Rem # STEP.03
	Rem # TRUE_END
	Exit Function

End Function

Rem #===========================================================================
Rem # EOF
