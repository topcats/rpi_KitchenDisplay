#!/bin/bash

sudo apt-get purge nodered geany geany-common claws-mail claws-mail-i18n bluej -y
sudo apt-get purge thonny* -y
sudo apt-get purge wolfram-* *scratch* sonic-pi idle* -y
sudo apt-get purge smartsim java-common minecraft* libreoffice* -y
sudo apt autoremove -y
sudo apt-get install fonts-font-awesome fonts-lato fonts-roboto-slab fonts-ancient-scripts fonts-inconsolata fonts-symbola ttf-ancient-fonts -y
sudo apt install fonts-noto-color-emoji -y
sudo apt-get install --no-install-recommends chromium-browser -y
sudo apt-get install vlc
sudo pip3 install python-vlc requests urllib3
sudo pip3 list --outdated
sudo reboot
sudo apt-get update
sudo apt-get upgrade
sudo apt-get purge vlc-bin
sudo apt-get update
sudo apt-get upgrade
sudo apt-get remove python2.7
