# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
NC='\033[0m' # No Color


printf "${Red}Starting up${NC}"

printf "${Blue}Updating the system${NC}"
apt-get upgrade
apt-get dist-upgrade
apt-get update

printf "${Blue}Updating PIP"
pip install --upgrade pip


echo 'Starting to download extra tools'

printf "${Green}The Backdoor Factory${NC}"
git clone https://github.com/secretsquirrel/the-backdoor-factory /opt/the-backdoor-factory
cd /opt/the-backdoor-factory
chmod 755 install.sh && ./install.sh

printf "${Green}HTTP ScreenShot${NC}"
pip install selenium
git clone https://github.com/breenmachine/httpscreenshot.git /opt/httpscreenshot
cd /opt/httpscreenshot 
chmod 755 install-dependencies.sh && ./install-dependencies.sh

printf '${Green}SMBExec${NC}'
git clone https://github.com/pentestgeek/smbexec.git /opt/smbexec
cd /opt/smbexec
./install.sh

printf '${Green}Masscan${NC}'
apt-get install git gcc make libpcap-dev
git clone https://github.com/robertdavidgraham/masscan.git /opt/masscan
cd /opt/masscan
make 
make install

printf "${Green}Gitrob${NC}"
git clone https://github.com/michenriksen/gitrob.git /opt/gitrob
gem install bundler

printf "${Green}CMSmap${NC}"
git clone https://github.com/Dionach/CMSmap /opt/CMSmap

printf "${Green}WPScan${NC}"
git clone https://github.com/wpscanteam/wpscan.git /opt/wpscan 

printf "${Green}EyeWitness${NC}"
git clone https://github.com/ChrisTruncer/EyeWitness.git /opt/EyeWitness

printf "${Green}Printer Exploits${NC}"
git clone https://github.com/MooseDojo/praedasploit /opt/praedasploit

printf "${Green}SQLMap${NC}"
git clone https://github.com/sqlmapproject/sqlmap /opt/sqlmap 

printf "${Green}Discover Scripts${NC}"
git clone https://github.com/leebaird/discover.git /opt/discover 

printf "${Green}BeEF${NC}"
cd /opt
wget https://raw.github.com/beefproject/beef/a6a7536e/install-beef 
chmod 755 install-beef
./install-beef

printf "${Green}Responder${NC}"
git clone https://github.com/SpiderLabs/Responder.git /opt/Responder

printf "${Green}Custom Scripts${NC}"
git clone https://github.com/cheetz/Easy_P.git /opt/Easy_P
git clone https://github.com/cheetz/Passsword_Plus_One /opt/Passowrd_Plus_One
git clone https://github.com/cheetz/PowerShell_Popup /opt/PowerShell_Popup
git clone https://github.com/cheetz/icmpshock /opt/icmpshock
git clone https://github.com/cheetz/brutescrape /opt/brutescrape
git clone https://github.com/cheetz/reddit_xss /opt/reddit_xss

printf "${Green}Forked Versions${NC}"
git clone https://github.com/cheetz/PowerSploit /opt/HP_PowerSploit
git clone https://github.com/cheetz/PowerTools /opt/PowerTools
git clone https://github.com/cheetz/nishang /opt/nishang

printf "${Green}DSHashes${NC}"
wget http://ptscripts.googlecode.com/svn/trunk/dshashes.py -O /opt/NTDSXtract/dshashes.py

printf "${Green}NoSQLMap${NC}"
git clone https://github.com/tcstool/NoSQLMap.git /opt/NoSQLMap

printf "${Green}Spiderfoot${NC}"
mkdir /opt/spiderfoot && cd /opt/spiderfoot
wget http://sourceforge.net/projects/spiderfoot/files/spiderfoot-2.3.0-src.tar.gz/download 
tar xzvf download
pip install lxml
pip install netaddr
pip install M2Crypto
pip install cherrypy
pip install mako

printf "${Green}Mimikatz${NC}"
git clone https://github.com/gentilkiwi/mimikatz /opt/mimikatz

printf "${Green}PowerSploit${NC}"
git clone https://github.com/mattifestation/PowerSploit.git /opt/PowerSploit
cd /opt/PowerSploit && wget https://raw.githubusercontent.com/obscuresec/random/master/StartListener.py && wget https://raw.githubusercontent.com/darkoperator/powershell_scripts/master/ps_encoder.py

printf "${Green}Nishang${NC}"
git clone https://github.com/samratashok/nishang /opt/nishang

printf "${Green}Wifite${NC}"
git clone https://github.com/derv82/wifite /opt/wifite

printf "${Green}SecLists${NC}"
git clone https://github.com/danielmiessler/SecLists.git /opt/SecLists

printf "${Green}WIFIPhisher${NC}"
git clone https://github.com/sophron/wifiphisher.git /opt/wifiphisher

printf "${Green}gitlist${NC}"
git clone https://github.com/macubergeek/gitlist.git /opt/gitlist

printf "${Green}Phishing-Frenzy${NC}"
git clone https://github.com/pentestgeek/phishing-frenzy.git /var/www/phishing-frenzy

printf "${Green}net-creds${NC}"
git clone https://github.com/DanMacInerney/net-creds.git /opt/net-creds

printf "${Green}Veil${NC}"
git clone https://github.com/Veil-Framework/Veil /opt/Veil
cd /opt/Veil && ./Install.sh -c

printf "${Red}Finishing Up!${NC}"


