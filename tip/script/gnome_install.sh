#!/bin/sh

echo "----- START TO INSTALL GNOME -----"
pacman -Syu xorg
pacman -S xterm xorg-xclock xorg-twm xorg-xinit xorg-server-utils
pacman -S gnome gnome-extra gnome-tweak-tool
systemctl enable gdm
localectl set-locale LANG="en_US.UTF-8"

echo 'unblock "WaylandEnable=false" on /etc/gdm/custom.conf'

