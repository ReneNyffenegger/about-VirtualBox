VBoxManage guestcontrol $vmNameClone copyto --username $userName --password $password --target-directory $instDir "$(get-location)\anotherBatchFile.bat"
