#!/bin/bash

# Kitchen Display
# ==========================
# WebButton install script

echo "Installing WebButtons..."

# 1. Install dependencies
sudo apt-get install xdotool -y
sudo apt-get install python3-rpi.gpio -y

# 2. Clone the WebButtons repository
sudo -u pi git clone https://github.com/topcats/rpi_WebButtons.git /home/pi/WebButtons

# 3. Install service
sudo cp /home/pi/WebButtons/webbuttons.service /lib/systemd/system/webbuttons.service
sudo chmod 644 /lib/systemd/system/webbuttons.service
chmod +x /home/pi/WebButtons/webbuttons.py

# 4. Enable and start the WebButtons service
sudo systemctl daemon-reload
sudo systemctl enable webbuttons.service
