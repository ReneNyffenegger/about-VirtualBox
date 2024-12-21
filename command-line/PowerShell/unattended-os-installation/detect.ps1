# VBoxManage unattended detect --iso=$isoFile
VBoxManage unattended detect --iso=$isoFile | select-string TypeId | foreach-object { $osType = $_ -replace '.* = (.*)', '$1'}
write-host "detected os type $osType"
