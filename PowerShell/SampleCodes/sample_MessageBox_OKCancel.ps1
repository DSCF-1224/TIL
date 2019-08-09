Add-Type -AssemblyName System.Windows.Forms

$retval = [System.Windows.Forms.MessageBox]::Show("Message", "Caption", [System.Windows.Forms.MessageBoxButtons]::OKCancel, [System.Windows.Forms.MessageBoxIcon]::None)

if ($retval -eq [System.Windows.Forms.DialogResult]::OK) {
	[Void][System.Windows.Forms.MessageBox]::Show("[OK] was selected.", "Caption")
}

if ($retval -eq [System.Windows.Forms.DialogResult]::Cancel) {
	[Void][System.Windows.Forms.MessageBox]::Show("[Cancel] was selected.", "Caption")
}

# EOF
