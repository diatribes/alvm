#!/bin/bash
source config.sh

qemu-system-x86_64 \
    -display none \
    -no-reboot \
    -no-user-config \
    -nodefaults \
    -cpu host \
    -enable-kvm \
    -m ${RUNMEM} \
    -kernel "${OUTPUTPATH}"/bzImage \
    -nographic \
    -serial none -device isa-serial,chardev=s1 \
    -chardev stdio,id=s1,signal=off \
    -append "panic=-1 notsc" \
    -initrd "${OUTPUTPATH}"/rootfs-new.cpio \
    -nic user,model=virtio-net-pci \
    -virtfs local,path=${INPUTPATH},mount_tag=host0,security_model=none,id=host0 \
    -virtfs local,path=${OUTPUTPATH},mount_tag=host1,security_model=none,id=host1


