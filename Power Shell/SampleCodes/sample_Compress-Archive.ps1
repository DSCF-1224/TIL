# =============================================================================================================================== #
# when you can not carry out this script, change the policy using the command written in the next line
# Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
# =============================================================================================================================== #

Write-Host '[Notice]'
Write-Host 'The process has been interrupted in order to avoid mistakes.'
Write-Host 'Please delete the `Exit-PSHostProcess` in the next line to use this script properly.'
Exit-PSHostProcess

# =============================================================================================================================== #

$str_PathFolderWork = "E:\hoge"

$str_NameFileTargetToZip  = "*.csv"
$str_PathFileTargetToZip  = Join-Path $str_PathFolderWork $str_NameFileTargetToZip

$val_DateWhenThisScriptActivated = Get-Date -Format "yyyyMMdd_HHmmss"
$str_DateWhenThisScriptActivated = [string]$val_DateWhenThisScriptActivated
$str_NameZipFile                 = "VER_" + $str_DateWhenThisScriptActivated + ".zip"
$str_PathZipFile                 = Join-Path $str_PathFolderWork $str_NameZipFile

Compress-Archive -Path $str_PathFileTargetToZip -DestinationPath $str_PathZipFile -CompressionLevel Optimal

Write-Host '[Notice]'
Write-Host 'The process has finished successfully.'
