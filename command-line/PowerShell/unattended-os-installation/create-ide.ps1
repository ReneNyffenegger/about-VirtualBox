#   Create an IDE storage controller for a virtual DVD drive and
#   attach an Installation ISO medium

VBoxManage storagectl    $vmName --name       'IDE Controller'  --add ide
VBoxManage storageattach $vmName --storagectl 'IDE Controller'  --port 0 --device 0 --type dvddrive --medium $isoFile
