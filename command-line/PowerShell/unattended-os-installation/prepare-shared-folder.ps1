VBoxManage sharedfolder add $vmName --name shr --hostpath "$(get-location)\sharedFolder" --automount
