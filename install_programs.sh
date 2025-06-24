echo "We shall now install the most important apps, they kinda need to exist"
sleep 2
echo ""
echo ""

# My fcitx5
sudo cp fcitx5 /usr/bin/

# make yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

sudo pacman -S --noconfirm --needed xdg-desktop-portal-gtk xdg-desktop-portal-gnome xwayland-satellite swaybg swaylock waybar rofi-wayland kitty fish niri obs-studio sddm thunar firefox fzf eza noto-fonts-emoji z eza alacritty mako
chsh -s /usr/bin/fish

# nvim
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim npm luarocks
git clone https://github.com/New9c/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

yay -S --noconfirm webcord

echo "I also like other apps, but if you don't want them, just say no"
echo ""
echo ""
sudo pacman -S --needed gimp 
yay -S --needed spotify

systemctl enable sddm.service
echo "Rebooting now, see you soon!"
echo -n "2..."
sleep 1
echo -n "1..."
sleep 1
systemctl reboot
