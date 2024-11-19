#!/bin/sh
. ./config.sh

qemu-system-x86_64 \
    -display none \
    -no-reboot \
    -no-user-config \
    -nodefaults \
    -m ${RUNMEM} \
    -kernel "${OUTPUTPATH}"/bzImage \
    -nographic \
    -append "console=ttyS0 notsc panic=-1" \
    -initrd "${OUTPUTPATH}"/rootfs-new.cpio \
    -serial mon:stdio \
    -nic user,model=virtio-net-pci

