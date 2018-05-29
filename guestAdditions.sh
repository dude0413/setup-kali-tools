# Use this for older versions of Kali #
apt-get purge virtualbox-guest-x11
apt-get autoremove --purge
reboot
apt-get update
apt-get dist-upgrade
reboot
apt-get update
apt-get install -y virtualbox-guest-x11
reboot

# Use this for newer versions (2018ish) #
apt-get update
apt-get dist-update
apt-get upgrade
# Insert CD Guest Additions (look at top of screen -> Devices #
# Move the VBoxLinuxAdditions.run to Desktop #
sudo apt-get install linux-headers-$(uname -r)
cd /root/Desktop
chmod 755 VBoxLinuxAdditions.run
./VBoxLinuxAdditions.run
reboot now
