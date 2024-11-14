#!/bin/sh
export HOME=/root
export PATH=$PATH:/sbin
mount -t devtmpfs devtmpfs /dev
mount -t proc none /proc
mount -t sysfs none /sys

mkdir -pv /mnt/input
mount -t 9p -o trans=virtio host0 /mnt/input

mkdir -pv /mnt/output
mount -t 9p -o trans=virtio host1 /mnt/output

echo $(uname -a)
ifconfig eth0 up
sdhcp

if [ ! -d "/etc/firstboot" ]; then
	touch /etc/firstboot
	apk update
	apk upgrade
	apk add `cat /mnt/input/packages.conf`
fi

cd
/bin/sh
/carl-exit
