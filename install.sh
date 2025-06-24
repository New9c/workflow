read -p "Do you wanna install my(New9c's) configs? This may cause problems, so please be careful! [y/N] " confirm
confirm=${confirm,,}  # Convert to lowercase

if [[ "$confirm" != "y" && "$confirm" != "yes" ]]; then
    echo "Canceled just in time!"
    exit 1
fi

./workflow_to_local.sh
./grub.sh
./sddm.sh
./install_programs.sh
