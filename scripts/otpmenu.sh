#!/bin/sh

dmenu=dmenu-wl
xdotool="ydotool type --file -"

export PASSWORD_STORE_DIR="$HOME/.password-store"
cd $PASSWORD_STORE_DIR

PASS=`find * -name '*.gpg' | sed s/\.gpg// | "$dmenu" -l 10`
[[ -n $PASS ]] || exit

PW=`pass otp $PASS | { read -r pass; printf %s "$pass"; }`

notify-send $PW --expire-time=20000
wl-copy $PW
