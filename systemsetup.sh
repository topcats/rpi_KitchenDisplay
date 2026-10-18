#!/bin/bash

# Kitchen Display
# ==========================
# General system setup script

# Set Scripts to be executable
echo "Setting scripts to be executable..."
sudo chmod +x General/hostsetup.sh
sudo chmod +x General/disableipv6.sh
sudo chmod +x General/setswapfile.sh
sudo chmod +x Kiosk/touch-portrait.sh
sudo chmod +x WebButtons/install.sh

echo "Base Setup"
sudo ./General/disableipv6.sh
sudo ./General/setswapfile.sh
sudo ./General/hostsetup.sh
