#!/bin/sh

# Running the QEMU VM

if [ $# -ne 1 ]; then
    echo "usage: ./run.sh <debian.img>"
    exit 1
fi

set -xe

source ./config.sh

# Check if there is anything currently mounted.
sync
sudo umount $QEMU_MOUNT_DIR || echo "not mounted"
qemu-system-x86_64 $QEMU_FLAGS "$1"
