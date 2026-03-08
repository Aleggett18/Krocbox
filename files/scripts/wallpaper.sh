#!/usr/bin/env bash
set -euo pipefail

intall -D /tmp/files/wallpapers/krocbox-wallpaper.png /usr/share/backgrounds/krocbox-wallpaper.png

gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/krocbox-wallpaper.png"
