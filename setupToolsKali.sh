echo -e "Starting up"

echo -e "Updating the system"
apt-get upgrade
apt-get dist-upgrade
apt-get update

echo -e "Updating PIP"
pip install --upgrade pip

echo 'Starting to download extra tools'

echo -e "The Backdoor Factory"
git clone https://github.com/secretsquirrel/the-backdoor-factory /opt/the-backdoor-factory
cd /opt/the-backdoor-factory
chmod 755 install.sh && ./install.sh

echo -e "HTTP ScreenShot"
pip install selenium
git clone https://github.com/breenmachine/httpscreenshot.git /opt/httpscreenshot
cd /opt/httpscreenshot 
chmod 755 install-dependencies.sh && ./install-dependencies.sh

echo -e 'SMBExec'
git clone https://github.com/pentestgeek/smbexec.git /opt/smbexec
cd /opt/smbexec
./install.sh

echo -e 'Masscan'
apt-get install git gcc make libpcap-dev
git clone https://github.com/robertdavidgraham/masscan.git /opt/masscan
cd /opt/masscan
make 
make install

echo -e "Gitrob"
git clone https://github.com/michenriksen/gitrob.git /opt/gitrob
gem install bundler

echo -e "CMSmap"
git clone https://github.com/Dionach/CMSmap /opt/CMSmap

echo -e "WPScan"
git clone https://github.com/wpscanteam/wpscan.git /opt/wpscan 

echo -e "EyeWitness"
git clone https://github.com/ChrisTruncer/EyeWitness.git /opt/EyeWitness

echo -e "Printer Exploits"
echo
git clone https://github.com/MooseDojo/praedasploit /opt/praedasploit

echo -e "SQLMap"
echo
git clone https://github.com/sqlmapproject/sqlmap /opt/sqlmap 

echo -e "Discover Scripts"
echo
git clone https://github.com/leebaird/discover.git /opt/discover 

echo -e "BeEF"
echo
cd /opt
wget https://raw.github.com/beefproject/beef/a6a7536e/install-beef 
chmod 755 install-beef
./install-beef

echo -e "Responder"
echo
git clone https://github.com/SpiderLabs/Responder.git /opt/Responder

echo -e "Custom Scripts"
echo
git clone https://github.com/cheetz/Easy_P.git /opt/Easy_P
git clone https://github.com/cheetz/Passsword_Plus_One /opt/Passowrd_Plus_One
git clone https://github.com/cheetz/PowerShell_Popup /opt/PowerShell_Popup
git clone https://github.com/cheetz/icmpshock /opt/icmpshock
git clone https://github.com/cheetz/brutescrape /opt/brutescrape
git clone https://github.com/cheetz/reddit_xss /opt/reddit_xss

echo -e "Forked Versions"
echo
git clone https://github.com/cheetz/PowerSploit /opt/HP_PowerSploit
git clone https://github.com/cheetz/PowerTools /opt/PowerTools
git clone https://github.com/cheetz/nishang /opt/nishang

echo -e "DSHashes"
echo
wget http://ptscripts.googlecode.com/svn/trunk/dshashes.py -O /opt/NTDSXtract/dshashes.py

echo -e "NoSQLMap"
echo
git clone https://github.com/tcstool/NoSQLMap.git /opt/NoSQLMap
pip install ipcalc
pip install pbkdf2
pip install couchdb
pip install 

echo -e "Spiderfoot"
echo
mkdir /opt/spiderfoot && cd /opt/spiderfoot
wget http://sourceforge.net/projects/spiderfoot/files/spiderfoot-2.3.0-src.tar.gz/download 
tar xzvf download
pip install lxml
pip install netaddr
pip install M2Crypto
pip install cherrypy
pip install mako

echo -e "Mimikatz"
echo
git clone https://github.com/gentilkiwi/mimikatz /opt/mimikatz

echo -e "PowerSploit"
echo
git clone https://github.com/mattifestation/PowerSploit.git /opt/PowerSploit
cd /opt/PowerSploit && wget https://raw.githubusercontent.com/obscuresec/random/master/StartListener.py && wget https://raw.githubusercontent.com/darkoperator/powershell_scripts/master/ps_encoder.py

echo -e "Nishang"
echo
git clone https://github.com/samratashok/nishang /opt/nishang

echo -e "Wifite"
echo
git clone https://github.com/derv82/wifite /opt/wifite

echo -e "SecLists"
echo
git clone https://github.com/danielmiessler/SecLists.git /opt/SecLists

echo -e "WIFIPhisher"
echo
git clone https://github.com/sophron/wifiphisher.git /opt/wifiphisher

echo -e "gitlist"
echo
git clone https://github.com/macubergeek/gitlist.git /opt/gitlist

echo -e "Phishing-Frenzy"
echo
git clone https://github.com/pentestgeek/phishing-frenzy.git /var/www/phishing-frenzy

echo -e "net-creds"
echo
git clone https://github.com/DanMacInerney/net-creds.git /opt/net-creds

echo -e "Veil"
echo
git clone https://github.com/Veil-Framework/Veil /opt/Veil
cd /opt/Veil && ./Install.sh -c

echo -e "metagoofil"
echo
git clone https://github.com/laramies/metagoofil /opt/metagoofil

echo -e "AutoSploit"
echo
git clone https://github.com/NullArray/AutoSploit /opt/AutoSploit

echo -e "AverageSecGuyScripts"
echo
git clone https://github.com/averagesecurityguy/scripts /opt/avgscripts

echo -e "Finishing Up!"
echo
