VBoxManage guestcontrol $vmNameClone run --exe cmd.exe  --username $userName --password $password WHATISTHIS /c echo foo bar baz
VBoxManage guestcontrol $vmNameClone run --exe ping.exe --username $userName --password $password WHATISTHIS 172.17.192.1
