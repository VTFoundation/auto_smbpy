#! /bin/bash
echo
echo \>\> Updating repositories ...
echo
sudo apt update
echo
echo \>\> Installing Python3 \& Pip3 ...
echo
sudo apt install python3 python3-pip -y
sudo apt autoremove python3-impacket -y
echo
echo \>\> Installing Impacket \(smbserver.py\) ...
echo
# sudo pip3 install impacket
git clone https://github.com/SecureAuthCorp/impacket.git impacket
cd impacket
sudo pip3 install .
cd ..
sudo rm -rf impacket
echo
echo \>\> Setting up smbserver as systemd service ...
if [ ! -d "/opt/smb-files" ] 
then
    sudo mkdir /opt/smb-files
fi
sudo curl https://raw.githubusercontent.com/VTFoundation/auto_smbpy/main/smbserver.service -o /etc/systemd/system/smbserver.service
sudo systemctl enable smbserver
sudo systemctl start smbserver
echo
echo \>\> Done setting up smbserver as systemd service ...
echo
