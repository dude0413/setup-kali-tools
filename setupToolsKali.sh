Red='tput setaf 1'
Green='tput setaf 2'
Blue='tput setaf 4'
NC='tput sgr0'

printf "${Red}Starting up${NC}"
echo 
printf "${Blue}Updating the system${NC}"
echo
apt-get upgrade
apt-get dist-upgrade
apt-get update

printf "${Blue}Updating PIP"
pip install --upgrade pip


echo 'Starting to download extra tools'
echo

printf "${Green}The Backdoor Factory${NC}"
echo
git clone https://github.com/secretsquirrel/the-backdoor-factory /opt/the-backdoor-factory
cd /opt/the-backdoor-factory
chmod 755 install.sh && ./install.sh

printf "${Green}HTTP ScreenShot${NC}"
echo
pip install selenium
git clone https://github.com/breenmachine/httpscreenshot.git /opt/httpscreenshot
cd /opt/httpscreenshot 
chmod 755 install-dependencies.sh && ./install-dependencies.sh

printf '${Green}SMBExec${NC}'
echo
git clone https://github.com/pentestgeek/smbexec.git /opt/smbexec
cd /opt/smbexec
./install.sh

printf '${Green}Masscan${NC}'
echo
apt-get install git gcc make libpcap-dev
git clone https://github.com/robertdavidgraham/masscan.git /opt/masscan
cd /opt/masscan
make 
make install

printf "${Green}Gitrob${NC}"
echo
git clone https://github.com/michenriksen/gitrob.git /opt/gitrob
gem install bundler

printf "${Green}CMSmap${NC}"
echo
git clone https://github.com/Dionach/CMSmap /opt/CMSmap

printf "${Green}WPScan${NC}"
echo
git clone https://github.com/wpscanteam/wpscan.git /opt/wpscan 

printf "${Green}EyeWitness${NC}"
echo
git clone https://github.com/ChrisTruncer/EyeWitness.git /opt/EyeWitness

printf "${Green}Printer Exploits${NC}"
echo
git clone https://github.com/MooseDojo/praedasploit /opt/praedasploit

printf "${Green}SQLMap${NC}"
echo
git clone https://github.com/sqlmapproject/sqlmap /opt/sqlmap 

printf "${Green}Discover Scripts${NC}"
echo
git clone https://github.com/leebaird/discover.git /opt/discover 

printf "${Green}BeEF${NC}"
echo
cd /opt
wget https://raw.github.com/beefproject/beef/a6a7536e/install-beef 
chmod 755 install-beef
./install-beef

printf "${Green}Responder${NC}"
echo
git clone https://github.com/SpiderLabs/Responder.git /opt/Responder

printf "${Green}Custom Scripts${NC}"
echo
git clone https://github.com/cheetz/Easy_P.git /opt/Easy_P
git clone https://github.com/cheetz/Passsword_Plus_One /opt/Passowrd_Plus_One
git clone https://github.com/cheetz/PowerShell_Popup /opt/PowerShell_Popup
git clone https://github.com/cheetz/icmpshock /opt/icmpshock
git clone https://github.com/cheetz/brutescrape /opt/brutescrape
git clone https://github.com/cheetz/reddit_xss /opt/reddit_xss

printf "${Green}Forked Versions${NC}"
echo
git clone https://github.com/cheetz/PowerSploit /opt/HP_PowerSploit
git clone https://github.com/cheetz/PowerTools /opt/PowerTools
git clone https://github.com/cheetz/nishang /opt/nishang

printf "${Green}DSHashes${NC}"
echo
wget http://ptscripts.googlecode.com/svn/trunk/dshashes.py -O /opt/NTDSXtract/dshashes.py

printf "${Green}NoSQLMap${NC}"
echo
git clone https://github.com/tcstool/NoSQLMap.git /opt/NoSQLMap
pip install ipcalc
pip install pbkdf2
pip install couchdb
pip install 

printf "${Green}Spiderfoot${NC}"
echo
mkdir /opt/spiderfoot && cd /opt/spiderfoot
wget http://sourceforge.net/projects/spiderfoot/files/spiderfoot-2.3.0-src.tar.gz/download 
tar xzvf download
pip install lxml
pip install netaddr
pip install M2Crypto
pip install cherrypy
pip install mako

printf "${Green}Mimikatz${NC}"
echo
git clone https://github.com/gentilkiwi/mimikatz /opt/mimikatz

printf "${Green}PowerSploit${NC}"
echo
git clone https://github.com/mattifestation/PowerSploit.git /opt/PowerSploit
cd /opt/PowerSploit && wget https://raw.githubusercontent.com/obscuresec/random/master/StartListener.py && wget https://raw.githubusercontent.com/darkoperator/powershell_scripts/master/ps_encoder.py

printf "${Green}Nishang${NC}"
echo
git clone https://github.com/samratashok/nishang /opt/nishang

printf "${Green}Wifite${NC}"
echo
git clone https://github.com/derv82/wifite /opt/wifite

printf "${Green}SecLists${NC}"
echo
git clone https://github.com/danielmiessler/SecLists.git /opt/SecLists

printf "${Green}WIFIPhisher${NC}"
echo
git clone https://github.com/sophron/wifiphisher.git /opt/wifiphisher

printf "${Green}gitlist${NC}"
echo
git clone https://github.com/macubergeek/gitlist.git /opt/gitlist

printf "${Green}Phishing-Frenzy${NC}"
echo
git clone https://github.com/pentestgeek/phishing-frenzy.git /var/www/phishing-frenzy

printf "${Green}net-creds${NC}"
echo
git clone https://github.com/DanMacInerney/net-creds.git /opt/net-creds

printf "${Green}Veil${NC}"
echo
git clone https://github.com/Veil-Framework/Veil /opt/Veil
cd /opt/Veil && ./Install.sh -c

printf "${Green}metagoofil${NC}"
echo
git clone https://github.com/laramies/metagoofil /opt/metagoofil

printf "${Green}AutoSploit${NC}"
echo
git clone https://github.com/NullArray/AutoSploit /opt/AutoSploit

printf "${Green}AverageSecGuyScripts${NC}"
echo
git clone https://github.com/averagesecurityguy/scripts /opt/avgscripts

printf "${Red}Finishing Up!${NC}"
echo
