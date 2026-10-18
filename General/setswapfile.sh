#!/bin/bash

# Kitchen Display
# ==========================
# Set Swap File script

echo "Config: Setting Swap File..."

# Check if the script is running with root privileges
if [[ "$EUID" -ne 0 ]]; then
    echo "  ❌ This script is NOT running with root privileges."
    exit 1
fi


# Check if the dphys-swapfile file exists
file_swap="/etc/dphys-swapfile"
if [ -e "$file_swap" ]; then
    echo "  $file_swap found"

    echo "  Stop swap"
    sudo dphys-swapfile swapoff

    echo "  Edit swap file"
    sudo sed -i 's/CONF_SWAPSIZE=.*/CONF_SWAPSIZE=1024/' "$file_swap"

    echo "  Setup swap file"
    sudo dphys-swapfile setup

    echo "  Start swap"
    sudo dphys-swapfile swapon

else
    echo "  ❌ $file_swap does not exist, skipped"
fi
