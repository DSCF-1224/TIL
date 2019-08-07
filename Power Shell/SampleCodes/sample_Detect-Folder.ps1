# =============================================================================================================================== #
# when you can not carry out this script, change the policy using the command written in the next line
# Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
# =============================================================================================================================== #

[System.Windows.Forms.MessageBox]::Show(
	"The process has been interrupted in order to avoid mistakes." + "`n" + "Please delete the `Throw` & `Trap` written below to use this script properly.", `
	"Information", `
	"OK", `
	"Information"
)

Throw "This script was interrupted."
Trap { Break }

# =============================================================================================================================== #
# Main procedure of this script is as below
# =============================================================================================================================== #

Set-Variable -Name str_PathFolder -Value "C:\hoge"

if ( Test-Path($str_PathFolder) ) {
	# This block is executed when the target folder existed
	[System.Windows.Forms.MessageBox]::Show(
		"The target folder was detected." + "`r`n" + "[PATH] " + $str_PathFolder, `
		"Information", `
		"OK", `
		"Information"
	)
} else {
	# This block is executed when the target folder does not exist
	Throw "The target folder is not detected !" + "`r`n" + "[PATH] " + $str_PathFolder
}

# This `Trap` is executed if when the target folder does not exist
Trap { Break }

# =============================================================================================================================== #
# EOF
# =============================================================================================================================== #
