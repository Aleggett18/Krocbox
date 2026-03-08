set -e

echo "Applying Krocbox branding..."

# Copy logo from repo into system
cp /ctx/branding/krocbox-logo.png /usr/share/pixmaps/krocbox-logo.png

# Replace Fedora login logo
cp /usr/share/pixmaps/krocbox-logo.png /usr/share/pixmaps/fedora-gdm-logo.png
