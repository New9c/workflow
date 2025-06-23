clear
echo "Local files going to workflow! Ctrl+C to cancel!"
echo -n "3..."
sleep 1
echo -n "2..."
sleep 1
echo -n "1..."
sleep 1
rm -r  .config/
cp -r ~/.config/starship/ .config/
cp -r ~/.config/rofi/ .config/
cp -r ~/.config/waybar/ .config/
cp -r ~/.config/kitty/ .config/
cp -r ~/.config/fish/ .config/
cp -r ~/.config/niri/ .config/
echo "Done!"
sleep 2
