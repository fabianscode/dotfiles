#!/bin/sh

export PASSWORD_STORE_DIR="$HOME/.password-store"
cd $PASSWORD_STORE_DIR

PASS=`find * -name '*.gpg' | sed s/\.gpg// | dmenu-wl -l 10`
[[ -n $PASS ]] || exit

PW=`pass show "$PASS" | { read -r pass; printf %s "$pass"; }`

wl-copy $PW
wtype $PW

sleep 20
cliphist delete-query "$PW"
