#!/bin/sh

# Mounting the Qemu VM to /mnt/ 

# References: https://www.cloudsavvyit.com/7517/how-to-mount-a-qemu-virtual-disk-image/
#		      https://www.cnx-software.com/2011/09/29/how-to-transfer-files-between-host-and-qemu/

if [ $# -ne 1 ]; then 
	echo "usage: ./mount.sh <debian.img>"
	exit 1
fi

set -x -e 

source ./config.sh 

sync
sudo umount $QEMU_MOUNT_DIR || echo "not mounted"
# https://askubuntu.com/questions/1096849/cant-make-new-dir-with-mkdir
mkdir --parents "$QEMU_MOUNT_DIR"
sudo mount -o rw,loop,offset=$QEMU_IMG_OFFSET "$1" $QEMU_MOUNT_DIR 
