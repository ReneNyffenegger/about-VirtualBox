#
# Add Virtual Box bin-path to PATH environment variable if necessary:
#
  if ( (get-command VBoxManage.exe -errorAction silentlyContinue) -eq $null) {
     $env:path="C:\Program Files\Oracle\VirtualBox;$env:path"
  }


# $vmName  = 'Win10Preview'
# $vmName  = 'Windows10'
  $vmName  = 'Windows11'
# $vmName  = 'Ubuntu-desktop-22.04.1'
# $vmName  = 'Debian-11.6.0'

#
# Location of installation ISO file:
#
# $isoFile = "$home\ISOs\Windows10_InsiderPreview_Client_x64_en-us_19035.iso"
# $isoFile = "$home\ISOs\Windows-10.iso"
  $isoFile = "$home\ISOs\Win11_24H2_English_x64.iso"
# $isoFile = "$home\ISOs\ubuntu-22.04.1-desktop-amd64.iso"
# $isoFile = "$home\ISOs\debian-11.6.0-amd64-netinst.iso"

  if (-not (test-path $isoFile)) {
    "$isoFile does not exist"
     return
  }

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
# Some Memory sizes
#
  $hdSizeMb  = 65536
  $memSizeMb = (get-cimInstance win32_physicalMemory | measure-object -property capacity -sum).sum / 1mb / 2 # Half of the total memory
  $vramMb    =   128 # Must be in range 0 … 256 (Mb) - GUI allows max of 128 only.

#
# Number of CPUs:
#
  $nofCPUs  = $([System.Environment]::ProcessorCount / 2)

#
# Path of shared folder
#
  $sharedFolder = "$home\VirtualBox\sharedFolder"
