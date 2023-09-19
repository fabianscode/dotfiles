search=$(dmenu -fn "Terminess Nerd Font" -h 26 -po Search)

if [ "$search" = "" ]; then
	exit 1
fi

~/.venv/yt-search/bin/python ~/documents/dotfiles/scripts/search_yt.py "$search" 10 | dmenu -fn "Terminess Nerd Font" -l 10 -h 26 -i -p "Choose" | cut -d "[" -f2 | cut -d "]" -f1 | xargs mpv
