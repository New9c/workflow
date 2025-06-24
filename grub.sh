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

THEME_PATH="/boot/grub/themes/$THEME_NAME/theme.txt"

if ! grep -q "^GRUB_THEME=" /etc/default/grub; then
  echo "GRUB_THEME=\"$THEME_PATH\"" | sudo tee -a /etc/default/grub > /dev/null
else
  sudo sed -i "s|^GRUB_THEME=.*|GRUB_THEME=\"$THEME_PATH\"|" /etc/default/grub
fi

# Update GRUB
echo "Updating GRUB config..."
if [ -d /sys/firmware/efi ]; then
  sudo grub-mkconfig -o /boot/efi/EFI/arch/grub/grub.cfg
else
  sudo grub-mkconfig -o /boot/grub/grub.cfg
fi

echo "GRUB theme installed!"
