
VBoxManage storageattach $vmName --storagectl 'IDE Controller'  --port 0 --device 0 --type dvddrive --medium $isoFile
