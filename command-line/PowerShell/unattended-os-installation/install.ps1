VBoxManage unattended install $vmName      `
  --iso=$isoFile                           `
  --user=$userName                         `
  --password=$password                     `
  --full-user-name=$fullUserName           `
  --install-additions                      `
  --time-zone=CET                          `
# --post-install-command='VBoxControl guestproperty set installation_finished y'
