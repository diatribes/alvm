#!/bin/sh
. ./config.sh

qemu-system-x86_64 \
    -display none \
    -no-reboot \
    -no-user-config \
    -nodefaults \
    -m ${RUNMEM} \
    -kernel "${OUTPUTPATH}"/bzImage-new \
    -nographic \
    -append "console=ttyS0 notsc panic=-1" \
    -initrd "${OUTPUTPATH}"/rootfs-new.cpio \
    -serial mon:stdio

