#!/bin/sh
/bin/busybox find / ! -path "/mnt/*" ! -path "/sys/*" ! -path "/proc/*" ! -path "/dev/*" \
 | cpio -o -H newc > /mnt/output/rootfs-new.cpio

