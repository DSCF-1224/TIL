Rem #===========================================================================
Rem # * warning
Rem #   * This Visual Basic Script was written in UTF-8
Rem #   * Function `ErrorMsgBox` is not defined here
Rem #     * This `Function` is written in "MsgBox\ErrorMsgBox.vbs"
Rem # * target
Rem #   * Get Paths from a CSV file
Rem #===========================================================================

Sub GetPathsFromTextFile( ByVal str_path, ByVal retval )

	Rem # obj_fso : Scripting.FileSystemObject
	Rem # retval  : System.Collections.ArrayList

	Const OpenTextFileForReading = 1

	Dim obj_Txt_ListTargetFphFile Rem # object, for Text file
	Dim str_buf_eachline          Rem # string, buffer
	Dim str_buf_splited           Rem # string, buffer
	Dim rtvl_bln

	Rem # STEP.01
	Rem # Check whether the target file exists
	If ( obj_fso.FileExists( str_path ) = False ) Then
		ErrorMsgBox "Failed to open the file" & vbCrLf & "[PATH]" & str_path, True
	End If

	Rem # STEP.02
	Rem # Open the text file written the paths
	Set obj_Txt_ListTargetFphFile = obj_fso.OpenTextFile( _
		path_file_ListTargetFphFile, _
		OpenTextFileForReading,      _
		False                        _
	)

	Rem # STEP.03
	Rem # Read out the taget paths
	Do Until obj_Txt_ListTargetFphFile.AtEndOfStream
		str_buf_eachline = obj_Txt_ListTargetFphFile.ReadLine
		str_buf_splited  = Split( str_buf_eachline, "," )
		str_buf_eachline = Trim( str_buf_splited(0) )
		If UCase( str_buf_eachline ) = "TRUE" Then
			retval.Add Trim( str_buf_splited(1) )
		Elseif UCase( str_buf_eachline ) = "FALSE" Then
			Rem # Nothing to do in this case
		Else
			Rem # BAD_END
			ErrorMsgBox _
				"<GetPathsFromTextFile>"             & vbCrLf & _
				"Undefined identifier was detected!" & vbCrLf & _
				"[identifier]"                       & vbCrLf & _
				str_buf_eachline                     & vbCrLf & _
				"[PATH]"                             & vbCrLf & _
				str_path,                                       _
				True
		End If
	Loop

	Rem # STEP.05
	Rem # check the number of the got paths
	If ( retval.count <= 0 ) Then
		Rem # BAD_END
		ErrorMsgBox _
			"There is not paths." & vbCrLf & _
			"[PATH]"              & vbCrLf & _
			str_path,                        _
			True
	End If

	Rem # TRUE END
	Exit Sub

End Sub

Rem #===========================================================================
Rem # EOF
