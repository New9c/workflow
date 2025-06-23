echo "We shall now install the most important apps, they kinda need to exist"
sleep 2
echo ""
echo ""
sudo cp fcitx5 /usr/bin/
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
sudo pacman -S --noconfirm --needed xdg-desktop-portal-gtk xdg-desktop-portal-gnome xwayland-satellite swaybg swaylock waybar rofi-wayland kitty fish niri obs-studio sddm nvim thunar
systemctl start sddm.service
yay -S --noconfirm webcord

echo "I also like other apps, but if you don't want them, just say no"
echo ""
echo ""
sudo pacman -S --needed gimp 
yay -S --needed spotify

echo "Rebooting now, see you soon!"
echo -n "2..."
sleep 1
echo -n "1..."
sleep 1
systemctl reboot
