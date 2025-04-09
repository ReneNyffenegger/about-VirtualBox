$registeredVMs = & VBoxManage list vms

if (VBoxManage list vms | select-string \b${vmName}\b) {
  write-host "$vmName is registered"
  VBoxManage controlvm    $vmName poweroff
  VBoxManage unregistervm $vmName --delete
}
else {
  write-host "$vmName is not registered"
}

if (test-path $vmPath) {
  write-host "Removing vm files $vmPath"
  rmdir -recurse $vmPath
}

if (test-path $sharedFolder) {
  write-host "Removing shared folder $sharedFolder"
  rmdir -recurse -force $sharedFolder
}
