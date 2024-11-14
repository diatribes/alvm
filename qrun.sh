#!/bin/bash
source config.sh
qemu-system-x86_64 \
    -display none \
    -no-user-config \
    -nodefaults \
    -m 1G \
    -cpu host \
    -enable-kvm  \
    -kernel "${OUTPUTPATH}"/bzImage \
    -nographic \
    -chardev stdio,id=s1,signal=off \
    -serial none -device isa-serial,chardev=s1 \
    -append "notsc" \
    -initrd "${OUTPUTPATH}"/rootfs.cpio \
    -nic user,model=virtio-net-pci

# for tap
# -device virtio-net,netdev=network0 -netdev tap,id=network0,ifname=tap0,script=no,downscript=no,vhost=on
