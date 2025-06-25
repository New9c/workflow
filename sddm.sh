read -p "This does not work :(" confirm
confirm=${confirm,,}  # Convert to lowercase

exit 1

if [[ "$confirm" != "y" && "$confirm" != "yes" ]]; then
    echo "Ok"
    exit 1
fi
sudo mkdir -p /usr/share/sddm/themes/Corners
sudo cp -r sddm/Corners/* /usr/share/sddm/themes/Corners
sudo mkdir -p /etc/sddm.conf.d
sudo cp -r sddm/sddm.conf.d/* /etc/sddm.conf.d
