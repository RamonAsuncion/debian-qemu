#!/bin/sh

# Mounting the Qemu VM to /mnt/ 

if [ $# -ne 1 ]; then 
	echo "usage: ./mount.sh <debian.img>"
	exit 1
fi

set -x -e 

source ./config.sh 

echo "Mounting $1 ..."

sync
sudo umount $QEMU_MOUNT_DIR || echo "not mounted"
mkdir --parents "$QEMU_MOUNT_DIR"
sudo mount -o rw,loop,offset=$QEMU_IMG_OFFSET "$1" $QEMU_MOUNT_DIR 
