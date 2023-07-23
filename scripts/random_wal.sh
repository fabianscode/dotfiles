#!/bin/sh

FILE=$(find ~/pictures/wallpapers/ | shuf -n 1)

wal -i $FILE
