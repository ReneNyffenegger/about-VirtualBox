#
#   Executing an executable on the guest.
#   Note: the .exe suffix is mandatatory (on Windows, of course)
#   
#   Note also: the VBoxService service (which somehow was installed on the
#   guest) needs to run in order of this command to work
#

VBoxManage guestcontrol $vmNameClone run --exe ipconfig.exe --username $userName --password $password
