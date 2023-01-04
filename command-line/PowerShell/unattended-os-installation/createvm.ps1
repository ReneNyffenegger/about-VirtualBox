VBoxManage createvm --name $vmName --ostype $osType --register

if (! (test-path $vmPath\$vmName.vbox)) {
   echo "I expected a .vbox"
   return
}
