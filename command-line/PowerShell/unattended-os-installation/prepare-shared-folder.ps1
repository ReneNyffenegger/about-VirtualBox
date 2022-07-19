$sharedFolder = "$pwd\sharedFolder"
$null = mkdir $sharedFolder
VBoxManage sharedfolder add $vmName --name shr --hostpath $sharedFolder --automount
