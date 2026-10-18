#!/bin/bash

# Kitchen Display
# ==========================
# Audio Player install script

echo "Installing Audio Player..."

# 1. Install dependencies
sudo apt-get install vlc -y
sudo pip3 install python-vlc requests urllib3

# 2. Clone the AudioPlayer repository
sudo -u pi git clone https://github.com/topcats/rpi_AudioPlayer.git /home/pi/AudioPlayer

# 3. Install service
sudo cp /home/pi/AudioPlayer/audioplayer.service /lib/systemd/system/audioplayer.service
sudo chmod 644 /lib/systemd/system/audioplayer.service
chmod +x /home/pi/AudioPlayer/autoplayer.py

# 4. Enable and start the Audio Player service
sudo systemctl daemon-reload
sudo systemctl enable audioplayer.service

# 5. Apply default config
if [ -e " /home/pi/AudioPlayer/autoplayer_config.json" ]; then
    echo "  ❌ config already exist, skipped"
else
    echo "  Default config applied"
    cp /home/pi/AudioPlayer/autoplayer_config-example.json /home/pi/AudioPlayer/autoplayer_config.json
fi
