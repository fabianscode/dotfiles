#!/bin/bash
# from http://gitlab.databiz.ch/simon/dotfiles/commit/cf2f4b910ea804e12b869f584663d08307af9f9e

declare sinks=`pacmd list-sinks | sed -n -e 's/.*device.description[[:space:]]=[[:space:]]"\(.*\)"/\1/p'`
declare index=`pacmd list-sinks | sed -n -e 's/.*[[:space:]]index:[[:space:]]\([[:digit:]]\)/\1/p'`

choices=$(paste -d'@' <(echo "$sinks") <(echo "$index"))
chosen=$(echo "$choices" | dmenu -h 26 -l 10 -i -p "SINK" -fn "Terminess Nerd Font")
index=$(echo $chosen | sed -n -e 's/.*\([0-9]\)$/\1/p')

pacmd "set-default-sink ${index}"
for app in $(pacmd list-sink-inputs | sed -n -e 's/index:[[:space:]]\([[:digit:]]\)/\1/p');
do
pacmd "move-sink-input $app $index"
done

