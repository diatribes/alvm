
* cd alvm
* vi ./build/input/packages.conf (newline or space separated list of apk packages to install)
* ./bootstrap.sh
* ./qrun.sh (The first qrun _creates_ ./build/output/rootfs-new.cpio)
* ./qrun.sh (The second qrun _runs_ ./build/output/rootfs-new.cpio)

Generate a new rootfs-new.cpio:
* rm ./build/output/rootfs-new.cpio
* ./qrun.sh
