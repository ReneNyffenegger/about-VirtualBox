VBoxManage guestcontrol $vmNameClone run   --exe "X:\aBatchFile.bat"   --username $userName --password $password               DUMMY foo bar baz
VBoxManage guestcontrol $vmNameClone run   --exe "X:\aBatchFile.bat"   --username $userName --password $password -E VAR=aValue DUMMY foo bar baz
