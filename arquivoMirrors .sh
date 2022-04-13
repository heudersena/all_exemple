#!/bin/bash
RED='\033[0;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

echo -e "${RED}# # # # # # # # # #${NC}"
echo -e "${BLUE}# # # # # # # # # #${NC}"
echo -e "${GREEN}# # # # # # # # # #${NC}"
echo -e "${GREEN}ADICIONANDO ESPELHOS${NC}"
##### Debian Main Repos
echo "deb http://deb.debian.org/debian/ buster main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ buster main contrib non-free" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian/ buster-updates main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ buster-updates main contrib non-free" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian-security buster/updates main" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian-security buster/updates main" >> /etc/apt/sources.list
echo "deb http://ftp.debian.org/debian buster-backports main" >> /etc/apt/sources.list
echo "deb-src http://ftp.debian.org/debian buster-backports main" >> /etc/apt/sources.list
##Audacity
echo "deb http://ppa.launchpad.net/ubuntuhandbook1/audacity/ubuntu bionic main" >> /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/ubuntuhandbook1/audacity/ubuntu bionic main " >> /etc/apt/sources.list
##Debian Multimedia
echo "deb [arch=amd64,i386] https://www.deb-multimedia.org buster main non-free" >> /etc/apt/sources.list
##Dropbox
echo "deb http://linux.dropbox.com/debian buster main" >> /etc/apt/sources.list
##Google Chrome Browser
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ buster main" >> /etc/apt/sources.list
##Skype
echo "deb [arch=amd64] https://repo.skype.com/deb buster main" >> /etc/apt/sources.list
##Steam
echo "deb [arch=i386,amd64] http://repo.steampowered.com/steam/ precise steam" >> /etc/apt/sources.list
##Teamviewer
echo "deb http://linux.teamviewer.com/deb buster main" >> /etc/apt/sources.list
##Virtualbox
echo "deb [arch=i386,amd64] http://download.virtualbox.org/virtualbox/debian buster contrib" >> /etc/apt/sources.list
##Wine
echo "deb [arch=i386] https://dl.winehq.org/wine-builds/debian/ buster main" >> /etc/apt/sources.list
echo -e "${RED}# # # # # # # # # #${NC}"
echo -e "${BLUE}# # # # # # # # # #${NC}"
echo -e "${GREEN}# # # # # # # # # #${NC}"


echo -e "${RED}# # # # # # # # # #${NC}"
echo -e "${BLUE}# # # # # # # # # #${NC}"
echo -e "${GREEN}# # # # # # # # # #${NC}"
echo -e "${GREEN}ADICIONANDO CHAVES${NC}"
sudo su
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 52165BD6B9BA26F
wget http://www.deb-multimedia.org/pool/main/d/deb-multimedia-keyring/deb-multimedia-keyring_2016.8.1_all.deb && dpkg -i deb-multimedia-keyring_2016.8.1_all.deb
apt-key adv --keyserver pgp.mit.edu --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 1F3045A5DF7587C3
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F24AEA9FB05498B7
wget -O - https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc | apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
wget -nc https://dl.winehq.org/wine-builds/winehq.key && apt-key add winehq.key && rm winehq.key
exit
echo -e "${RED}# # # # # # # # # #${NC}"
echo -e "${BLUE}# # # # # # # # # #${NC}"
echo -e "${GREEN}# # # # # # # # # #${NC}"


echo -e "${RED}# # # # # # # # # #${NC}"
echo -e "${RED}# # # # # # # # # #${NC}"
echo -e "${RED}# # # # # # # # # #${NC}"
echo -e "${RED}UPDATE${NC}"
sudo apt-get update #2>&1 >/dev/null

echo -e "${RED}UPGRADE${NC}"
sudo apt-get upgrade -y #2>&1 >/dev/null

echo -e "${RED}DIST-UPGRADE${NC}"
sudo apt-get dist-upgrade -y #2>&1 >/dev/null

echo -e "${RED}# # # # # # # # # #${NC}"
echo -e "${RED}# # # # # # # # # #${NC}"
echo -e "${RED}# # # # # # # # # #${NC}"


echo -e "${BLUE}# # # # # # # # # #${NC}"
echo -e "${BLUE}# # # # # # # # # #${NC}"
echo -e "${BLUE}# # # # # # # # # #${NC}"

echo -e "${BLUE}AUTOREMOVE${NC}"
sudo apt-get autoremove -y #2>&1 >/dev/null

echo -e "${BLUE}CLEAN${NC}"
sudo apt-get clean #2>&1 >/dev/null

echo -e "${BLUE}AUTOCLEAN${NC}"
sudo apt-get autoclean -y #2>&1 >/dev/null

echo -e "${BLUE}# # # # # # # # # #${NC}"
echo -e "${BLUE}# # # # # # # # # #${NC}"
echo -e "${BLUE}# # # # # # # # # #${NC}"
