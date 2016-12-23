#!/bin/sh

echo "----- START TO INSTALL ZFS -----"
echo "----- add repository to pacman.conf -----"
PACMAN_CONF=/etc/pacman.conf
echo "" >> $PACMAN_CONF
echo "[archzfs]" >> $PACMAN_CONF
echo "Server = http://archzfs.com/\$repo/x86_64" >> $PACMAN_CONF
echo "" >> $PACMAN_CONF

echo "----- add repository key -----"
pacman-key -r 5E1ABF240EE7A126
pacman-key --lsign-key 5E1ABF240EE7A126

echo "----- install zfs -----"
pacman -Syy
pacman -S zfs-linux

