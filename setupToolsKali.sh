echo -e "$(tput setaf 1)Starting up$(tput sgr0)"

echo -e "$(tput setaf 4)Updating the system$(tput sgr0)"
apt-get upgrade
apt-get dist-upgrade
apt-get update

echo -e "$(tput setaf 4)Updating PIP"
pip install --upgrade pip

echo 'Starting to download extra tools'

echo -e "$(tput setaf 2)The Backdoor Factory$(tput sgr0)"
git clone https://github.com/secretsquirrel/the-backdoor-factory /opt/the-backdoor-factory
cd /opt/the-backdoor-factory
chmod 755 install.sh && ./install.sh

echo -e "$(tput setaf 2)HTTP ScreenShot$(tput sgr0)"
pip install selenium
git clone https://github.com/breenmachine/httpscreenshot.git /opt/httpscreenshot
cd /opt/httpscreenshot 
chmod 755 install-dependencies.sh && ./install-dependencies.sh

echo -e '$(tput setaf 2)SMBExec$(tput sgr0)'
git clone https://github.com/pentestgeek/smbexec.git /opt/smbexec
cd /opt/smbexec
./install.sh

echo -e '$(tput setaf 2)Masscan$(tput sgr0)'
apt-get install git gcc make libpcap-dev
git clone https://github.com/robertdavidgraham/masscan.git /opt/masscan
cd /opt/masscan
make 
make install

echo -e "$(tput setaf 2)Gitrob$(tput sgr0)"
git clone https://github.com/michenriksen/gitrob.git /opt/gitrob
gem install bundler

echo -e "$(tput setaf 2)CMSmap$(tput sgr0)"
git clone https://github.com/Dionach/CMSmap /opt/CMSmap

echo -e "$(tput setaf 2)WPScan$(tput sgr0)"
git clone https://github.com/wpscanteam/wpscan.git /opt/wpscan 

echo -e "$(tput setaf 2)EyeWitness$(tput sgr0)"
git clone https://github.com/ChrisTruncer/EyeWitness.git /opt/EyeWitness

echo -e "$(tput setaf 2)Printer Exploits$(tput sgr0)"
echo
git clone https://github.com/MooseDojo/praedasploit /opt/praedasploit

echo -e "$(tput setaf 2)SQLMap$(tput sgr0)"
echo
git clone https://github.com/sqlmapproject/sqlmap /opt/sqlmap 

echo -e "$(tput setaf 2)Discover Scripts$(tput sgr0)"
echo
git clone https://github.com/leebaird/discover.git /opt/discover 

echo -e "$(tput setaf 2)BeEF$(tput sgr0)"
echo
cd /opt
wget https://raw.github.com/beefproject/beef/a6a7536e/install-beef 
chmod 755 install-beef
./install-beef

echo -e "$(tput setaf 2)Responder$(tput sgr0)"
echo
git clone https://github.com/SpiderLabs/Responder.git /opt/Responder

echo -e "${Yellow}Custom Scripts$(tput sgr0)"
echo
git clone https://github.com/cheetz/Easy_P.git /opt/Easy_P
git clone https://github.com/cheetz/Passsword_Plus_One /opt/Passowrd_Plus_One
git clone https://github.com/cheetz/PowerShell_Popup /opt/PowerShell_Popup
git clone https://github.com/cheetz/icmpshock /opt/icmpshock
git clone https://github.com/cheetz/brutescrape /opt/brutescrape
git clone https://github.com/cheetz/reddit_xss /opt/reddit_xss

echo -e "$(tput setaf 2)Forked Versions$(tput sgr0)"
echo
git clone https://github.com/cheetz/PowerSploit /opt/HP_PowerSploit
git clone https://github.com/cheetz/PowerTools /opt/PowerTools
git clone https://github.com/cheetz/nishang /opt/nishang

echo -e "$(tput setaf 2)DSHashes$(tput sgr0)"
echo
wget http://ptscripts.googlecode.com/svn/trunk/dshashes.py -O /opt/NTDSXtract/dshashes.py

echo -e "$(tput setaf 2)NoSQLMap$(tput sgr0)"
echo
git clone https://github.com/tcstool/NoSQLMap.git /opt/NoSQLMap
pip install ipcalc
pip install pbkdf2
pip install couchdb
pip install 

echo -e "$(tput setaf 2)Spiderfoot$(tput sgr0)"
echo
mkdir /opt/spiderfoot && cd /opt/spiderfoot
wget http://sourceforge.net/projects/spiderfoot/files/spiderfoot-2.3.0-src.tar.gz/download 
tar xzvf download
pip install lxml
pip install netaddr
pip install M2Crypto
pip install cherrypy
pip install mako

echo -e "$(tput setaf 2)Mimikatz$(tput sgr0)"
echo
git clone https://github.com/gentilkiwi/mimikatz /opt/mimikatz

echo -e "$(tput setaf 2)PowerSploit$(tput sgr0)"
echo
git clone https://github.com/mattifestation/PowerSploit.git /opt/PowerSploit
cd /opt/PowerSploit && wget https://raw.githubusercontent.com/obscuresec/random/master/StartListener.py && wget https://raw.githubusercontent.com/darkoperator/powershell_scripts/master/ps_encoder.py

echo -e "$(tput setaf 2)Nishang$(tput sgr0)"
echo
git clone https://github.com/samratashok/nishang /opt/nishang

echo -e "$(tput setaf 2)Wifite$(tput sgr0)"
echo
git clone https://github.com/derv82/wifite /opt/wifite

echo -e "$(tput setaf 2)SecLists$(tput sgr0)"
echo
git clone https://github.com/danielmiessler/SecLists.git /opt/SecLists

echo -e "$(tput setaf 2)WIFIPhisher$(tput sgr0)"
echo
git clone https://github.com/sophron/wifiphisher.git /opt/wifiphisher

echo -e "$(tput setaf 2)gitlist$(tput sgr0)"
echo
git clone https://github.com/macubergeek/gitlist.git /opt/gitlist

echo -e "$(tput setaf 2)Phishing-Frenzy$(tput sgr0)"
echo
git clone https://github.com/pentestgeek/phishing-frenzy.git /var/www/phishing-frenzy

echo -e "$(tput setaf 2)net-creds$(tput sgr0)"
echo
git clone https://github.com/DanMacInerney/net-creds.git /opt/net-creds

echo -e "$(tput setaf 2)Veil$(tput sgr0)"
echo
git clone https://github.com/Veil-Framework/Veil /opt/Veil
cd /opt/Veil && ./Install.sh -c

echo -e "$(tput setaf 2)metagoofil$(tput sgr0)"
echo
git clone https://github.com/laramies/metagoofil /opt/metagoofil

echo -e "$(tput setaf 2)AutoSploit$(tput sgr0)"
echo
git clone https://github.com/NullArray/AutoSploit /opt/AutoSploit

echo -e "$(tput setaf 2)AverageSecGuyScripts$(tput sgr0)"
echo
git clone https://github.com/averagesecurityguy/scripts /opt/avgscripts

echo -e "$(tput setaf 1)Finishing Up!$(tput sgr0)"
echo
