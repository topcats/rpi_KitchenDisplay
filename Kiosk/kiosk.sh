#!/bin/bash

# Set Screen
xset s noblank
xset s off
xset -dpms
unclutter -idle 0.5 -root &

# Clear Chromium Cache
rm -rf /home/pi/.cache/chromium/
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

# Start Chromium in Kiosk Mode
/usr/bin/chromium-browser --disable-overlay-scrollbar --noerrdialogs --disable-pinch --overscroll-history-navigation=0 --disable-infobars --kiosk https://infopane.the-owls.org &

# Loop and Continue
while true; do
    # xdotool keydown ctrl+Tab; xdotool keyup ctrl+Tab;
    sleep 15
done
