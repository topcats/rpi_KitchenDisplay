#!/bin/bash

# Kitchen Display
# ==========================
# Setup Desktop Environment

echo "🟢 Setting Desktop Environment..."
file_desktop="/home/pi/.config/lxsession/LXDE-pi/desktop.conf"

if [ -e "$file_desktop" ]; then
    echo "  File: $file_desktop found"
else
    echo "  File: $file_desktop Created"
    mkdir -p /home/pi/.config/lxsession/LXDE-pi
    echo "[GTK]" > "$file_desktop"
fi

grep -q 'sGtk/ColorScheme' "$file_desktop" && sed -i 's|sGtk/FontName=.*|sGtk/ColorScheme=selected_bg_color:#fafa7d7d0000\nselected_fg_color:#f0f0f0f0f0\nbar_bg_color:#fcfc9c9c0000\nbar_fg_color:#000000000000|' "$file_desktop" || echo "sGtk/ColorScheme=selected_bg_color:#fafa7d7d0000\nselected_fg_color:#f0f0f0f0f0f0\nbar_bg_color:#fcfc9c9c0000\nbar_fg_color:#000000000000\n" >> "$file_desktop"
grep -q 'sGtk/FontName' "$file_desktop" && sed -i 's|sGtk/FontName=.*|sGtk/FontName=PibotoLt 12|' "$file_desktop" || echo 'sGtk/FontName=PibotoLt 12' >> "$file_desktop"
grep -q 'iGtk/ToolbarIconSize' "$file_desktop" && sed -i 's|iGtk/ToolbarIconSize=.*|iGtk/ToolbarIconSize=3|' "$file_desktop" || echo 'iGtk/ToolbarIconSize=3' >> "$file_desktop"
grep -q 'sGtk/IconSizes' "$file_desktop" && sed -i 's|sGtk/IconSizes=.*|sGtk/IconSizes=gtk-large-toolbar=24,24|' "$file_desktop" || echo 'sGtk/IconSizes=gtk-large-toolbar=24,24' >> "$file_desktop"
grep -q 'iGtk/CursorThemeSize' "$file_desktop" && sed -i 's|iGtk/CursorThemeSize=.*|iGtk/CursorThemeSize=24|' "$file_desktop" || echo 'iGtk/CursorThemeSize=24' >> "$file_desktop"
grep -q 'iNet/DoubleClickTime' "$file_desktop" && sed -i 's|iNet/DoubleClickTime=.*|iNet/DoubleClickTime=250|' "$file_desktop" || echo 'iNet/DoubleClickTime=250' >> "$file_desktop"


file_desktopgtk="/home/pi/.config/gtk-3.0/gtk.css"
if [ -e "$file_desktopgtk" ]; then
    echo "  File: $file_desktopgtk found"
else
    echo "  File: $file_desktopgtk Created"
    mkdir -p /home/pi/.config/gtk-3.0
    echo "" > "$file_desktopgtk"
    echo "@define-color theme_selected_bg_color #fa7d00;" >> "$file_desktopgtk"
    echo "@define-color theme_selected_fg_color #f0f0f0;" >> "$file_desktopgtk"
fi
