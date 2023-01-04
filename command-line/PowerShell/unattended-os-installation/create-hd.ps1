VBoxManage createmedium --filename $vmPath\hard-drive.vdi --size $hdSizeMb

if (! (test-path $vmPath\hard-drive.vdi)) {
   echo "I expected a .vdi"
   return
}
