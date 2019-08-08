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

Set-Variable -Name str_PathFolderWork -Value "E:\hoge"

Set-Variable -Name str_NameFileTargetToZip -value "*.csv"
Set-Variable -Name str_PathFileTargetToZip -value (Join-Path $str_PathFolderWork $str_NameFileTargetToZip)

Set-Variable -Name str_DateNow      -Value (Get-Date -Format "yyyyMMdd")
Set-Variable -Name str_TimeNow      -Value (Get-Date -Format "HHmmss")
Set-Variable -Name str_NameZipFile  -Value ("VER_" + $str_DateNow + "_" + $str_TimeNow + ".zip")
Set-Variable -Name str_PathZipFile  -Value (Join-Path $str_PathFolderWork $str_NameZipFile)

Compress-Archive -Path $str_PathFileTargetToZip -DestinationPath $str_PathZipFile -CompressionLevel Optimal

[System.Windows.Forms.MessageBox]::Show(
	"The process has finished successfully.", `
	"Information", `
	"OK", `
	"Information"
)

# =============================================================================================================================== #
# EOF
# =============================================================================================================================== #
