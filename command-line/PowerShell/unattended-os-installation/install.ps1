VBoxManage unattended install $vmName      `
  --iso=$isoFile                           `
  --user=$userName                         `
  --password=$password                     `
  --full-user-name='Tee Queue Eighty-Four' `
  --install-additions                      `
  --time-zone=CET                          `
  --post-install-command='VBoxControl guestproperty set installation_finished y'
