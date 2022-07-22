 #
 # Add Virtual Box bin-path to PATH environment variable if necessary:
 #
if ( (get-command VBoxManage.exe -errorAction silentlyContinue) -eq $null) {
   $env:path="C:\Program Files\Oracle\VirtualBox;$env:path"
}


$vmName='Win10Preview'
$vmPath="$home\VirtualBox VMs\$vmName"

#
#  Default user name is vboxuser
#
$userName='tq84'
$fullUserName='Tee Queue Eighty-Four'

#
#  Default password is changeme
#
$password='theSecret'

#
#  Location of the isoFile
#
$isoFile='..\ISOs\Windows10_InsiderPreview_Client_x64_en-us_19035.iso'

#
#  Path of shared folder
#
$sharedFolder = "$pwd\sharedFolder"
