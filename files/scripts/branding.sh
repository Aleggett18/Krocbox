set -e

echo "Applying Krocbox branding..."

install -D /files/branding/krocbox-logo.png /usr/share/pixmaps/krocbox-logo.png

ln -sf /usr/share/pixmaps/krocbox-logo.png /usr/share/pixmaps/fedora-gdm-logo.png
