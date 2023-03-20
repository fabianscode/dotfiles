#!/bin/sh

. "${HOME}/.cache/wal/colors.sh"

conffile="$XDG_CONFIG_HOME/mako/config"

declare -A colors
colors=(
    ["background-color"]="${background}88"
    ["text-color"]="$foreground"
    ["border-color"]="$color7"
)

for color_name in "${!colors[@]}"; do
  sed -i "0,/^$color_name.*/{s//$color_name=${colors[$color_name]}/}" $conffile
done

makoctl reload
notify-send dieter
