#!/bin/sh

# Creating the Qemu VM

# If the arguments passed in are less than one: empty. 
# Reference: https://bash.cyberciti.biz/guide/$1 
if [ $# -ne 1 ]; then
    echo "usage: ./create.sh <debian.img>"
    exit 1
fi

# Exit immediately if non-zero status and turn on debugging information.  
set -xe
	
# Load in the config file.
source ./config.sh 

# Reference https://www.cloudsavvyit.com/6719/how-to-use-qemu-to-boot-another-os/
qemu-img create "$1" $QEMU_IMG_SIZE 
qemu-system-x86_64 $QEMU_FLAGS -hda "$1" -cdrom $DEBIAN_ISO -boot d   
