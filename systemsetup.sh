#!/bin/bash

# Kitchen Display
# ==========================
# General system setup script

# Set Scripts to be executable
echo "#############################################"
echo "Setting scripts to be executable..."
sudo chmod +x General/disableipv6.sh
sudo chmod +x General/setswapfile.sh
sudo chmod +x General/setarchiverepo.sh
sudo chmod +x General/setdesktop.sh
sudo chmod +x General/hostsetup.sh
sudo chmod +x Kiosk/touch-portrait.sh
sudo chmod +x WebButtons/install.sh
sudo chmod +x AudioPlayer/install.sh
sudo chmod +x Kiosk/install.sh

echo "#############################################"
echo "Base Setup"
sudo ./General/disableipv6.sh
sudo ./General/setswapfile.sh
sudo ./General/setarchiverepo.sh
sudo ./General/setdesktop.sh
sudo ./General/hostsetup.sh

echo "#############################################"
echo "Install Features"
sudo ./WebButtons/install.sh
sudo ./AudioPlayer/install.sh
sudo ./Kiosk/install.sh
