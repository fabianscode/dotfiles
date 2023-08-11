#!/bin/sh

export PASSWORD_STORE_DIR="$HOME/.password-store"
cd $PASSWORD_STORE_DIR

PASS=`find * -name '*.gpg' | sed s/\.gpg// | dmenu-wl -i -l 10 -p PWD -fn "Terminess Nerd Font" -h 26`
[[ -n $PASS ]] || exit

PW=`pass show "$PASS" | { read -r pass; printf %s "$pass"; }`

wl-copy $PW
wtype $PW

sleep 20
cliphist delete-query "$PW"
