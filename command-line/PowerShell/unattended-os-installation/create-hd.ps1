VBoxManage createmedium --filename $vmPath\hard-drive.vdi --size 32768

if (! (test-path $vmPath\hard-drive.vdi)) {
   echo "I expected a .vdi"
   return
}
