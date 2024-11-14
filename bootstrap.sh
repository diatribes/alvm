#!/bin/bash
source config.sh
mkdir -p "${CACHEPATH}"
mkdir -p "${OUTPUTPATH}"

./build/scripts/sdhcp.sh
./build/scripts/dumb-init.sh
./build/scripts/carl-exit.sh
./build/scripts/rootfs.sh
./build/scripts/kernel.sh
