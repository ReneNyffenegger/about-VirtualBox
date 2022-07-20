VBoxManage controlvm $vmName poweroff
VBoxManage unregistervm $vmName --delete
rmdir -recurse $vmPath
rmdir -recurse $sharedFolder
