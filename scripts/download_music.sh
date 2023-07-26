#!/bin/sh

DIR="/home/fabian/music/"
DIR+=$(ls ~/music | dmenu-wl)

#URL=$(xclip -selection clipboard -o)
URL=$(wl-paste)

if [ "$DIR" == "/home/fabian/music/" ]; then
    echo "Exit"
else
	mkdir "$DIR"
	cd "$DIR"

	yt-dlp --extract-audio --audio-format mp3 --add-metadata --parse-metadata "playlist_index:%(track_number)s" --embed-thumbnail -o "%(title)s" "$URL"
	notify-send "Finished downloading"
fi


#while IFS="" read -r line || [ -n "$p" ]
#do
#	IFS=';' read -r -a a <<< "$line"
#	mkdir "${a[0]}"
#	cd "${a[0]}"
#	yt-dlp --extract-audio --audio-format mp3 --add-metadata --embed-thumbnail -o "%(title)s" "${a[1]}"
#	cd ..
#done < $1
