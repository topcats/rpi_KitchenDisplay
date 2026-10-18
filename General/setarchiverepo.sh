#!/bin/bash

# Kitchen Display
# ==========================
# Set Archive Repo for Raspbian Buster

echo "🟢 Update Sources List for Archive Repo..."

file_sources="/etc/apt/sources.list"

# Disable the current Raspbian Buster repository
sed -i 's|deb http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi|#deb http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi|' "$file_sources"

# Add the archive repository for Raspbian Buster
if grep -q "legacy.raspbian.org" "$file_sources"; then
    echo "  Source already added"
else
    echo "deb https://legacy.raspbian.org/raspbian/ buster main contrib non-free rpi" >> "$file_sources"
    echo "  Legacy source added"
fi
