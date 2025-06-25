clear
echo "We shall now install the most important apps, they kinda need to exist"
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

sudo pacman -S --noconfirm --needed xdg-desktop-portal-gtk xdg-desktop-portal-gnome xwayland-satellite swaybg swaylock waybar rofi-wayland kitty fish niri obs-studio sddm thunar firefox fzf eza noto-fonts-emoji z eza mako starship xclip fastfetch nano
chsh -s /usr/bin/fish

# nvim
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim npm luarocks
git clone https://github.com/New9c/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

yay -S --noconfirm webcord

read -p "Do you wanna install optional programs? [y/N] " confirm
confirm=${confirm,,}  # Convert to lowercase

if [[ "$confirm" == "y" || "$confirm" == "yes" ]]; then
  sudo pacman -S --noconfirm --needed gimp nano alacritty 
  yay -S --noconfirm --needed spotify
fi

systemctl enable sddm.service
echo "Rebooting now, see you soon!"
sleep 1
systemctl reboot
