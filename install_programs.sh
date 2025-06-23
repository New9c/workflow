echo "We shall now install the most important apps, they kinda need to exist"
echo ""
echo ""
cp fcitx5 /usr/bin/
sudo pacman -S --noconfirm --needed xdg-desktop-portal-gtk xdg-desktop-portal-gnome xwayland-satellite swaybg swaylock waybar rofi-wayland kitty fish niri yay obs-studio sddm nvim thunar
yay -S --noconfirm webcord

clear
echo "I also like other apps, but if you don't want them, just say no"
echo ""
echo ""
sudo pacman -S --needed gimp spotify
clear

echo "Rebooting now, see you soon!"
echo -n "2..."
sleep 1
echo -n "1..."
sleep 1
reboot now
