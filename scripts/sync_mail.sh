#!/bin/sh


if [ -r "$HOME/.dbus/Xdbus" ]; then
  . "$HOME/.dbus/Xdbus"
fi

count_contact_before=$(find $HOME/.local/share/mail/contact@fabiancodes.de/INBOX/new/ -type f | wc -l)

mbsync contact@fabiancodes.de

count_contact_after=$(find $HOME/.local/share/mail/contact@fabiancodes.de/INBOX/new/ -type f | wc -l)

if [ $count_contact_after -ne $count_contact_before ]
then
	notify-send "New mail for contact@fabiancodes.de!"
else 
	echo "No new mail for contact@fabiancodes.de"
fi


count_dieter_before=$(find $HOME/.local/share/mail/dieter@fabiancodes.de/INBOX/new/ -type f | wc -l)

mbsync dieter@fabiancodes.de

count_dieter_after=$(find $HOME/.local/share/mail/dieter@fabiancodes.de/INBOX/new/ -type f | wc -l)

if [ $count_dieter_after -ne $count_dieter_before ]
then
	notify-send "New mail for dieter@fabiancodes.de!"
else 
	echo "No new mail for dieter@fabiancodes.de"
fi

