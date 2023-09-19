EMOJI=$(cat ~/.local/share/emoji | dmenu -l 10 -h 26 -fn "Terminess Nerd Font" | cut -d ' ' -f1 | tr -d '\n')
wl-copy $EMOJI
wtype $EMOJI
