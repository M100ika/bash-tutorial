#!/bin/bash

#sudo apt-get dist-upgrade #update raspbeian to the lastest version 
 
sudo apt-get update
sudo apt-get upgrade

wget https://download.teamviewer.com/downl...

wget https://www.teamviewer.com/ru/%d1%81%d0%ba%d0%b0%d1%87%d0%b0%d1%82%d1%8c/raspberry-pi/teamviewer_15.26.4_armhf.deb

sudo dpkg -i teamviewer-host_armhf.deb

sudo apt --fix-broken install 
