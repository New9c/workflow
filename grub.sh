#!/bin/bash
read -p "Do you want to install the Arcade GRUB theme? It may not work well on non-1920x1080 screens, and you'll need grub installed [y/N] " confirm
confirm=${confirm,,}  # Convert to lowercase

if [[ "$confirm" != "y" && "$confirm" != "yes" ]]; then
    echo "Gotcha."
    sleep 1
    exit 1
fi
# Exit on error
set -e

# Path to the theme directory
THEME_NAME="Arcade"
THEME_TARGET_DIR="/boot/grub/themes/$THEME_NAME"

# Copy the theme
echo "Installing theme to $THEME_TARGET_DIR..."
sudo mkdir -p "$THEME_TARGET_DIR"
sudo cp -r grub-theme/Arcade "$THEME_TARGET_DIR"

# Add the theme to grub config if not already present
if ! grep -q "GRUB_THEME=" /etc/default/grub; then
  echo 'GRUB_THEME="/boot/grub/themes/'"$THEME_NAME"'/theme.txt"' | sudo tee -a /etc/default/grub
else
  # Replace the existing theme line
  sudo sed -i 's|^GRUB_THEME=.*|GRUB_THEME="/boot/grub/themes/'"$THEME_NAME"'/theme.txt"|' /etc/default/grub
fi

echo "Arcade theme installed!"
