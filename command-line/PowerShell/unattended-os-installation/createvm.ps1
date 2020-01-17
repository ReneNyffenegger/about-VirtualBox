VBoxManage createvm --name $vmName --ostype Windows10_64 --register

if (! (test-path $vmPath\$vmName.vbox)) {
   echo "I expected a .vbox"
   return
}
