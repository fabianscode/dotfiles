#!/bin/sh

dmenu=dmenu-wl

export PASSWORD_STORE_DIR="$HOME/.password-store"
cd $PASSWORD_STORE_DIR

PASS=`find * -name '*.gpg' | sed s/\.gpg// | "$dmenu" -l 10`
[[ -n $PASS ]] || exit

PW=`pass show "$PASS" | { read -r pass; printf %s "$pass"; }`

wl-copy $PW
wtype $PW
