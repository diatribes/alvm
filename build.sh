#!/bin/bash
source config.sh
mkdir -p "${CACHEPATH}"

./dumb-init.sh
./carl-exit.sh
./sdhcp.sh
./rootfs.sh
sleep 5
./kernel.sh
