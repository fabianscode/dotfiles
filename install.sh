read -p "This script will delete your existing configuration files. This includes sway, nvim, waybar and alacritty. Would you like to continue? (y/N)?" CONT
if [ "$CONT" = "y" ]; then
    echo "Deleting existing files...";

    rm -r ~/.config/sway;
    rm -r ~/.config/alacritty;
    rm -r ~/.config/waybar;
    rm -r ~/.config/nvim;
    rm -r ~/.config/zathura;

    ln -s ${PWD}/sway ~/.config/sway;
    ln -s ${PWD}/alacritty ~/.config/alacritty;
    ln -s ${PWD}/waybar ~/.config/waybar;
    ln -s ${PWD}/nvim ~/.config/nvim;
    ln -s ${PWD}/zathura ~/.config/zathura;

    echo "Existing files deleted.";
else
    echo "Cancelled.";
fi
