Rem #===========================================================================
Rem # * warning
Rem #   * This Visual Basic Script was written in UTF-8
Rem #   * Function `ErrorMsgBox` is not defined here
Rem #     * This `Function` is written in "MsgBox\ErrorMsgBox.vbs"
Rem #   * object `obj_fso` is not defined here
Rem # * target
Rem #   * Include anthor VBScripts (ver.2018.11.28)
Rem #===========================================================================

Sub IncludeVBScript( ByVal str_path_vbs )
	
	Rem # Local variables
	Dim obj_iostream

	Rem # Local Support variables
	Dim retval_bln

	Rem # STEP.01
	Rem # Check whether the target VBScript is exist
	If ( obj_fso.FileExists( str_path ) = False ) Then

		Rem # STEP.BAD END
		retval_bln = ErrorMsgBox( _
			"Failed to open the VBScript" & vbCrLf & "[PATH]" & str_path_vbs, _
			True                                                              _
		)

	End If

	Rem # STEP.02
	Rem # open the target VBScript as a text file
	Set obj_iostream = obj_fso.OpenTextFile( str_path_vbs, 1 )

	Rem # STEP.03
	Rem # read out the all lines
	ExecuteGlobal obj_iostream.ReadAll()

	Rem # STEP.04
	Rem # close the VBScript opened as a text file
	obj_iostream.Close()

	Rem # STEP.05
	Rem # initialize the I/O stream
	Set obj_iostream = Nothing

	Rem # STEP.TRUE END
	Exit Sub

End Sub

Rem #===========================================================================
Rem # EOF
