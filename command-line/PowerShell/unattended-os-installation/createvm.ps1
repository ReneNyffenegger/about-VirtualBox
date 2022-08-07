  $osType = 'Windows10_64' # A Windows 10 installation!
# $osType = 'WindowsNT_64' # An «other» Windows installation

VBoxManage createvm --name $vmName --ostype $osType --register

if (! (test-path $vmPath\$vmName.vbox)) {
   echo "I expected a .vbox"
   return
}
