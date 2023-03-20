#!/bin/sh

read -p "This script will delete your existing configuration files. Would you like to continue? (y/N)? " CONT
if [ "$CONT" = "y" ]; then
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
	rm -r ~/.config/qutebrowser
	rm -r ~/.config/mpd
	rm -r ~/.config/khal
	rm -r ~/.config/vdirsyncer
	rm -r ~/.config/neomutt
	rm -r ~/.config/msmtp
	rm -r ~/.config/ncmpcpp
	rm -r ~/.config/mako
	rm -r ~/.config/mimeapps.list
	rm -r ~/.config/user-dirs.dirs

    rm ~/.zshrc
    rm ~/.zshenv
    rm ~/.mbsyncrc

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
    ln -s ${PWD}/qutebrowser ~/.config/qutebrowser;
    ln -s ${PWD}/mpd ~/.config/mpd;
    ln -s ${PWD}/khal ~/.config/khal;
    ln -s ${PWD}/vdirsyncer ~/.config/vdirsyncer;
    ln -s ${PWD}/neomutt ~/.config/neomutt;
    ln -s ${PWD}/msmtp ~/.config/msmtp;
    ln -s ${PWD}/ncmpcpp ~/.config/ncmpcpp;
    ln -s ${PWD}/mako ~/.config/mako;
    ln -s ${PWD}/mime/mimeapps.list ~/.config/mimeapps.list;
    ln -s ${PWD}/user-dirs/user-dirs.dirs ~/.config/user-dirs.dirs;

    ln -s ${PWD}/zsh/zshrc ~/.zshrc
    ln -s ${PWD}/zsh/zshenv ~/.zshenv
    ln -s ${PWD}/mbsync/mbsyncrc ~/.mbsyncrc

    echo "Updated files";
else
    echo "Cancelled.";
fi
