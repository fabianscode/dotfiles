#!/bin/sh
# from https://github.com/bazeeel/magyarch-i3

getforecast() { curl -sf "wttr.in/" > "/tmp/weatherreport" || exit 1 ;}

showweather() { printf "%s" "$(sed '16q;d' "/tmp/weatherreport" |
	grep -wo "[0-9]*%" | sort -rn | sed "s/^/☔ /g;1q" | tr -d '\n')"
sed '13q;d' "/tmp/weatherreport" | grep -o "m\\([-+]\\)*[0-9]\\+" | sort -n -t 'm' -k 2n | sed -e 1b -e '$!d' | tr '\n|m' ' ' | awk '{print "  -- ",$1 "°"," # ",$2 "°"}' ;}

getforecast
showweather
