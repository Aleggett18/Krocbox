#!/usr/bin/env bash
set -e

echo "Applying Krocbox branding..."

echo "krocbox" > /etc/hostname

if [ -f /usr/share/pixmaps/kroc-logo.png ]; then
    cp /usr/share/pixmaps/kroc-logo.png /usr/share/pixmaps/fedora-gdm-logo.png
fi