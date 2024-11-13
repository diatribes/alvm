#!/bin/sh
export HOME=/root
export PATH=$PATH:/sbin
mount -t devtmpfs devtmpfs /dev
mount -t proc none /proc
mount -t sysfs none /sys
echo $(uname -a)
ifconfig eth0 up
#sdhcp
cd
/bin/sh
/carl-exit
