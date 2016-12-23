#!/bin/sh

echo "----- CREATE GRUB CONFIG -----"
GRUB_CNF=/boot/grub/grub.cfg
echo "set timeout=2" > $GRUB_CNF
echo "set default=0" >> $GRUB_CNF
echo "" >> $GRUB_CNF
echo "# (0) Arch Linux" >> $GRUB_CNF
echo 'menuentry "Arch Linux" {' >> $GRUB_CNF
echo "    linux /vmlinuz-linux zfs=zroot rw" >> $GRUB_CNF
echo "    initrd /initramfs-linux.img" >> $GRUB_CNF
echo "}" >> $GRUB_CNF
echo "" >> $GRUB_CNF

