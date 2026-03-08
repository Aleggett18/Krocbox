#!/usr/bin/env bash

set -e

mkdir -p /usr/share/backgrounds/krocbox

cp /tmp/files/wallpaper.png /usr/share/backgrounds/krocbox/krocbox-wallpaper.png

gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/krocbox/wallpaper.png"
