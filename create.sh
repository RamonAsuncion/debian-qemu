#!/bin/sh

# Creating the Qemu VM

# If the arguments passed in are less than one: empty. 
if [ $# -ne 1 ]; then
    echo "usage: ./create.sh <debian.img>"
    exit 1
fi

# Exit immediately if non-zero status and turn on debugging information.  
set -xe
	
# Load in the config file.
source ./config.sh 

echo "Creating $1 ..."

qemu-img create "$1" $QEMU_IMG_SIZE 
qemu-system-x86_64 $QEMU_FLAGS -hda "$1" -cdrom $DEBIAN_ISO -boot d   
