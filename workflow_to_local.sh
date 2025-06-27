clear
echo "Workflow files going to the local machine!"
echo -n "3..."
sleep 1
echo -n "2..."
sleep 1
echo -n "1..."
sleep 1

mkdir -p ~/.local/share/fonts
cp -r fonts/* ~/.local/share/fonts/
mkdir -p ~/veadotube-mini
cp -r veadotube-mini/* ~/veadotube-mini/
cp -r .config/* ~/.config/
sed -i 's/pkill -x rofi || ~\/.config\/rofi\/rofilaunch.sh d/pkill -x fuzzel || fuzzel/g' ~/.config/niri/config.kdl
sed -i 's/ Rofi/ Fuzzel/g' ~/.config/niri/config.kdl
echo "Done!"
sleep 1
