Rem #===========================================================================
Rem # * warning
Rem #   * This Visual Basic Script was written in UTF-8
Rem #   * Function `ErrorMsgBox` is not defined here
Rem #     * This `Function` is written in "MsgBox\ErrorMsgBox.vbs"
Rem #   * object `obj_fso` is not defined here
Rem # * target
Rem #   * Make the target folder with existence check
Rem #===========================================================================

Sub CreateFolderWithCheck( str_path_fldr )

	Rem # obj_fso       : Scripting.FileSystemObject
	Rem # str_path_fldr : path of the target folder to make
	Rem # rtvl_bln      : return value (boolen)

	Rem # STEP.01
	Rem # check whether the target folder exists
	If obj_fso.FolderExists( str_path_fldr ) Then

		Rem # TRUE_END
		Rem # Nothing to do in this case
		Rem # because the target folder have already exist
		Exit Sub 

	Else

		Rem # STEP.02
		Rem # make the target folder
		obj_fso.CreateFolder( str_path_fldr )

		Rem # STEP.03
		Rem # check whether the target folder exists
		If obj_fso.FolderExists( str_path_fldr ) Then

			Rem # TRUE_END
			Rem # Nothing to do in this case
			Rem # because the target folder have already exist
			Exit Sub 

		Else

			Rem # BAD_END
			Rem # Failed to make the target folder
			rtvl_bln = ErrorMsgBox( _
				"Failed to make the folder" & vbCrLf & "[PATH]" & str_path_vbs, _
				True                                                            _
			)

		End If
	End If

End Sub

Rem #===========================================================================
Rem # EOF
