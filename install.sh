#!/bin/sh

read -p "This script will delete your existing configuration files. This includes sway, nvim, waybar and alacritty. Would you like to continue? (y/N)?" CONT
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

    ln -s ${PWD}/sway ~/.config/sway;
    ln -s ${PWD}/alacritty ~/.config/alacritty;
    ln -s ${PWD}/waybar ~/.config/waybar;
    ln -s ${PWD}/nvim ~/.config/nvim;
    ln -s ${PWD}/zathura ~/.config/zathura;
    ln -s ${PWD}/i3 ~/.config/i3;
    ln -s ${PWD}/polybar ~/.config/polybar;
    ln -s ${PWD}/gtk-3.0 ~/.config/gtk-3.0;
    ln -s ${PWD}/rofi ~/.config/rofi;
    ln -s ${PWD}/gdb ~/.config/gdb;
    ln -s ${PWD}/zsh/zshrc ~/.zshrc
    ln -s ${PWD}/zsh/zshenv ~/.zshenv

    echo "Existing files deleted.";
else
    echo "Cancelled.";
fi
