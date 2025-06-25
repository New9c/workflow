clear
read -p "Local to Workflow? [y/N] " confirm
confirm=${confirm,,}  # Convert to lowercase

if [[ "$confirm" != "y" && "$confirm" != "yes" ]]; then
    echo "Maybe not."
    exit 1
fi
rm -r  fonts/
cp -r ~/.local/share/fonts/ fonts/
rm -r  .config/
mkdir .config/
cp -r ~/.config/waybar/ .config/
cp -r ~/.config/kitty/ .config/
cp -r ~/.config/fish/ .config/
cp -r ~/.config/niri/ .config/
cp -r ~/.config/rofi/ .config/
mkdir .config/starship/
cp -r ~/.config/starship/starship.toml .config/starship/
mkdir .config/fastfetch/
cp ~/.config/fastfetch/config.jsonc .config/fastfetch/
echo "Done!"
