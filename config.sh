#!/bin/sh
export CACHEPATH=`realpath ./build/cache`
export KERNELVER=6.12
export SRCPATH=`realpath src`
export OUTPUTPATH=`realpath ./build/output`
export INPUTPATH=`realpath ./build/input`
export INSTALLMEM=512M
export RUNMEM=512M
export KERNELCONFIGPATH=`realpath ./src/qemu-kernel-config`
export MUSLGCC=musl-gcc

