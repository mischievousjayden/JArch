#!/bin/sh

if [ $# -ne 1 ]; then
    echo 'Usage: bash arch_config.sh <machine_name>'
    exit 1
fi

echo "----- START TO SETUP ARCH CONFIG -----"
echo "----- region & language -----"
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
export LANG="en_US.UTF-8"
ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime
hwclock --systohc --utc

echo "----- machine name -----"
echo $1 > /etc/hostname

