#!/bin/sh

pacman -S grub efibootmgr

rm -r /boot/efi
mkdir /boot/efi

mount /dev/nvme0n1p1 /boot/efi

grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot/efi
grub-mkconfig -o /boot/grub/grub.cfg
