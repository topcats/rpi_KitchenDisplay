#!/bin/bash

# Kitchen Display
# ==========================
# Set Archive Repo for Raspbian Buster

echo "🟢 Update Sources List for Archive Repo..."

file_sources="/etc/apt/sources.list"

# Disable the current Raspbian Buster repository
sudo sed -i 's|deb http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi|#deb http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi|' "$file_sources"

# Add the archive repository for Raspbian Buster
sudo echo "deb http://archive.raspberrypi.org/debian/ buster main contrib non-free rpi" >> "$file_sources"
