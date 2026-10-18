#!/bin/bash

# Kitchen Display
# ==========================
# Kiosk Screen install script

echo "Installing Kiosk Screen..."

# 1. Install dependencies
sudo apt-get install xdotool unclutter sed -y

# 2. Setup screen
sudo -u pi cp ./Kiosk/kiosk.sh /home/pi/kiosk.sh

# 3. Install service
sudo cp ./Kiosk/kiosk.service /lib/systemd/system/kiosk.service
sudo chmod 644 /lib/systemd/system/kiosk.service
chmod +x /home/pi/kiosk.sh

# 4. Enable and start the Kiosk service
sudo systemctl daemon-reload
sudo systemctl enable kiosk.service
