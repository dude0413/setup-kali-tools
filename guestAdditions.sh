apt-get purge virtualbox-guest-x11
apt-get autoremove --purge
reboot
apt-get update
apt-get dist-upgrade
reboot
apt-get update
apt-get install -y virtualbox-guest-x11
reboot
