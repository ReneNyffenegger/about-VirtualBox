VBoxManage controlvm $vmNameClone pause
# VBoxManage controlvm $vmNameClone savestate  // no need to save state, takes too long as we're going to throw away the current state of the machine anyway.
VBoxManage controlvm $vmNameClone poweroff
VBoxManage snapshot  $vmNameClone restore after-installation
VBoxManage startvm   $vmNameClone
