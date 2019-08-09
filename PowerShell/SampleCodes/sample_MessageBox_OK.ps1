Add-Type -AssemblyName System.Windows.Forms

$retval = [System.Windows.Forms.MessageBox]::Show("Message", "Caption", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Asterisk)
Write-Host $retval
Write-Host ($retval -eq [System.Windows.Forms.DialogResult]::OK) # return : True

# EOF
