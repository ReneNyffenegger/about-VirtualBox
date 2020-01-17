VBoxManage storagectl    $vmName --name       'SATA Controller' --add sata --controller IntelAHCI
VBoxManage storageattach $vmName --storagectl 'SATA Controller' --port 0 --device 0 --type hdd --medium $vmPath/hard-drive.vdi
