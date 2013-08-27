#!/bin/bash

ISOFILE=/tmp/custom.iso
ISOMOUNTDIR=/tmp/temp-iso-mount
USBDRIVE=/dev/sdb
USBMOUNTDIR=/tmp/temp-usb-mount

unetbootin isofile=$ISOFILE method=diskimage targetdrive="$USBDRIVE"1 installtype=USB autoinstall=yes
mount "$USBDRIVE"1 $USBMOUNTDIR

cd $USBMOUNTDIR
mv syslinux.cfg syslinux.old
mv isolinux/isolinux.cfg isolinux/syslinux.cfg
mv isolinux/isolinux.bin isolinux/syslinux.bin
mv isolinux syslinux

