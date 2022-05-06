#! /bin/bash

echo \>\> Setting up smbserver as systemd service ...

# [ ! -d "/opt/smb-files" ] && sudo mkdir /opt/smb-files
if [ ! -d "/opt/smb-files" ] 
then
    sudo mkdir /opt/smb-files
fi
sudo curl https://raw.githubusercontent.com/anantkaul/WinTricks/main/systemd-services/smbserver.service -o /etc/systemd/system/smbserver.service
sudo systemctl enable smbserver
sudo systemctl start smbserver

echo \>\> Done setting up smbserver as systemd service ...
