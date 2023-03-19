#!/bin/sh


if [ -r "$HOME/.dbus/Xdbus" ]; then
  . "$HOME/.dbus/Xdbus"
fi

count_contact_before=$(find $HOME/.local/share/mail/contact@fabianspecht.xyz/INBOX/new/ -type f | wc -l)

mbsync contact@fabianspecht.xyz

count_contact_after=$(find $HOME/.local/share/mail/contact@fabianspecht.xyz/INBOX/new/ -type f | wc -l)

if [ $count_contact_after -ne $count_contact_before ]
then
	notify-send "New mail for contact@fabianspecht.xyz!"
else 
	echo "No new mail for contact@fabianspecht.xyz"
fi


count_dieter_before=$(find $HOME/.local/share/mail/dieter@fabianspecht.xyz/INBOX/new/ -type f | wc -l)

mbsync dieter@fabianspecht.xyz

count_dieter_after=$(find $HOME/.local/share/mail/dieter@fabianspecht.xyz/INBOX/new/ -type f | wc -l)

if [ $count_dieter_after -ne $count_dieter_before ]
then
	notify-send "New mail for dieter@fabianspecht.xyz!"
else 
	echo "No new mail for dieter@fabianspecht.xyz"
fi

