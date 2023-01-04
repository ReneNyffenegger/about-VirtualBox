 #
# Add Virtual Box bin-path to PATH environment variable if necessary:
#
  if ( (get-command VBoxManage.exe -errorAction silentlyContinue) -eq $null) {
     $env:path="C:\Program Files\Oracle\VirtualBox;$env:path"
  }


# $vmName  = 'Win10Preview'
  $vmName  = 'Windows10'
# $vmName  = 'Ubuntu-desktop-22.04.1'
# $vmName  = 'Debian-11.6.0'

#
# Location of installation ISO file:
#
# $isoFile = "$home\VirtualBox\ISOs\Windows10_InsiderPreview_Client_x64_en-us_19035.iso"
  $isoFile = "$home\VirtualBox\ISOs\Windows-10.iso"
# $isoFile = "$home\VirtualBox\ISOs\ubuntu-22.04.1-desktop-amd64.iso"
# $isoFile = "$home\VirtualBox\ISOs\debian-11.6.0-amd64-netinst.iso"

  if (-not (test-path $isoFile)) {
    "$isoFile does not exist"
     return
  }

#
# VBoxManage.exe unattended detect --iso=$isoFile
#

#
# VBoxManage list ostypes
#
  $osType='Windows10_64'
# $osType='Ubuntu_64'
# $osType='Debian_64'

  $vmPath="$home\VirtualBox VMs\$vmName"

#
# Default user name is vboxuser
#
  $userName     = 'tq84'
  $fullUserName = 'Tee Queue Eighty-Four'

#
# Default password is changeme
#
  $password='theSecret'

#
# Some sizes
#
  $hdSizeMb  = 65536
  $memSizeMb = 16384
  $vram      =   128

#
# Path of shared folder
#
  $sharedFolder = "$home\VirtualBox\sharedFolder"
