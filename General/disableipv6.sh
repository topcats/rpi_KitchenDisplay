#!/bin/bash

# Kitchen Display
# ==========================
# Disable IPv6 script

echo "Config: Disabling IPv6..."

file_ipv6="/etc/sysctl.conf"


# Check if the script is running with root privileges
if [[ "$EUID" -ne 0 ]]; then
    echo "  ❌ This script is NOT running with root privileges."
    exit 1
fi

if [ -e "$file_ipv6" ]; then
    echo "  $file_ipv6 found"

    echo "\n# Disable IPv6\n" >> "$file_ipv6"
    echo "net.ipv6.conf.all.disable_ipv6 = 1\n" >> "$file_ipv6"
    echo "net.ipv6.conf.default.disable_ipv6 = 1\n" >> "$file_ipv6"
    echo "net.ipv6.conf.lo.disable_ipv6 = 1\n" >> "$file_ipv6"

else
    echo "  ❌ $file_ipv6 does not exist, skipped"
fi
