# Debian QEMU VM

## Download the debian ISO file.
https://www.debian.org/distrib/

## Create the IMG and go through setup. 

./create.sh debian.img 


## Run the virtual machine 

./run.sh debian.img


## Mount the disk to tranfer files between pc and VM.

./mount debian.img


## References
create.sh
* https://bash.cyberciti.biz/guide/$1 

mount.sh
* https://www.cloudsavvyit.com/7517/how-to-mount-a-qemu-virtual-disk-image/ 
* https://askubuntu.com/questions/1096849/cant-make-new-dir-with-mkdir

