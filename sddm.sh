read -p "Install theme for login? Doesn't work well with VMs [y/N] " confirm
confirm=${confirm,,}  # Convert to lowercase

if [[ "$confirm" != "y" && "$confirm" != "yes" ]]; then
    echo "Ok"
    exit 1
fi
sudo mkdir -p /usr/share/sddm/themes/Corners
sudo cp -r sddm/Corners/* /usr/share/sddm/themes/Corners
sudo mkdir -p /etc/sddm.conf.d
sudo cp -r sddm/sddm.conf.d/* /etc/sddm.conf.d
