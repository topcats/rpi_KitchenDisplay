#!/bin/bash

# Kitchen Display
# ==========================
# Install script for general system setup

echo "🟢 Removing Unnecessary Packages..."
sudo apt-get purge nodered geany* claws-mail* bluej -y
sudo apt-get purge thonny* mu-editor* -y
sudo apt-get purge wolfram-* *scratch* sonic-pi idle* -y
sudo apt-get purge smartsim java-common minecraft* libreoffice* -y
sudo apt-get purge firefox* -y
sudo apt remove --purge rpi-connect -y

echo "🟢 Packages Tidy up..."
sudo apt autoremove -y

echo "🟢 Packages Update..."
sudo apt-get update -y
sudo apt-get upgrade -y

echo "🟢 Packages Install..."
sudo apt-get install fonts-font-awesome fonts-lato fonts-roboto-slab fonts-ancient-scripts fonts-inconsolata fonts-symbola ttf-ancient-fonts -y
sudo apt install fonts-roboto fonts-noto-color-emoji -y
sudo apt-get install --no-install-recommends chromium-browser -y
sudo apt-get install vlc -y

echo "🟢 Python3 Packages Install..."
sudo pip3 install python-vlc requests urllib3
