VBoxManage guestcontrol $vmNameClone copyfrom --username $userName --password $password --target-directory "$(get-location)\copiedFromGuest.log" "$instDir\anotherBatchFile.log"
