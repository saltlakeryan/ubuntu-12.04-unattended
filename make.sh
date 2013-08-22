#!/bin/bash
BUILD=/tmp/custom-cd/
IMAGE=/tmp/custom.iso

#mount original image
mkdir -p /tmp/custom-cd-source
mount -o loop $1 /tmp/custom-cd-source

#copy files to writable place
rsync -rv /tmp/custom-cd-source/ $BUILD
chmod -R 777 $BUILD

#copy files from this project
rsync -rv ./cd-files/ $BUILD

#make iso
mkisofs -r -V "Custom Ubuntu Install CD" \
            -cache-inodes \
            -J -l -b isolinux/isolinux.bin \
            -c isolinux/boot.cat -no-emul-boot \
            -boot-load-size 4 -boot-info-table \
            -o $IMAGE $BUILD
