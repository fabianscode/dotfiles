#!/bin/sh

read -p "This script will delete your existing configuration files. Would you like to continue? (y/N)?" CONT
if [ "$CONT" = "y" ]; then
    echo "Deleting existing files...";

    rm -r ~/.config/sway;
    rm -r ~/.config/alacritty;
    rm -r ~/.config/waybar;
    rm -r ~/.config/nvim;
    rm -r ~/.config/zathura;
    rm -r ~/.config/i3;
    rm -r ~/.config/polybar;
    rm -r ~/.config/gtk-3.0;
    rm -r ~/.config/rofi;
    rm -r ~/.config/gdb
    rm ~/.zshrc
    rm ~/.zshenv

    echo "Existing files deleted.";
else
    echo "Cancelled.";
fi
