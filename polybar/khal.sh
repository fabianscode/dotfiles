#!/bin/sh

LIST=$(khal list now | sed -n 2p | sed 's/ ::.*//')

if [[ $LIST ]]; then
	echo ${LIST//[^[:ascii:][öäüÖÄÜß]/}
else 
	echo "No umcoming events"
fi
