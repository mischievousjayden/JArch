#!/bin/sh

if [ $# -ne 1 ]; then
    echo 'Usage: bash grub_install.sh <drive>'
    exit 1
fi

echo "----- START TO INSTALL GRUB -----"
pacman -Syy 
pacman -S grub-bios

grub-install $1
mkinitcpio -p linux
grub-mkconfig -o /boot/grub/grub.cfg

