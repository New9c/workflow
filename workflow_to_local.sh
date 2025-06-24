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
cp -r .config/* ~/.config/
echo "Done!"
sleep 2
