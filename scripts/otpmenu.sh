#!/bin/sh

dmenu=dmenu-wl

export PASSWORD_STORE_DIR="$HOME/.password-store"
cd $PASSWORD_STORE_DIR

PASS=`find * -name '*.gpg' | sed s/\.gpg// | "$dmenu" -l 10`
[[ -n $PASS ]] || exit

OTP=`pass otp $PASS | { read -r pass; printf %s "$pass"; }`

notify-send $OTP --expire-time=20000
wl-copy $OTP
wtype $OTP
