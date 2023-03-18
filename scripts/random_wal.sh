#!/bin/sh

FILE=$(find ~/documents/dotfiles/wallpapers/ | shuf -n 1)

wal -i $FILE
