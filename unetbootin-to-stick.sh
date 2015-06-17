#!/bin/bash

set -e

if [ -z "$1" ]; then
  Usage:
  ./unetbootin-to-stick.sh /path/to/usb/device

  Example: ./unetbootin-to-stick.sh /dev/sdb
  exit 1
fi

ISOFILE=/tmp/custom.iso
ISOMOUNTDIR=/tmp/temp-iso-mount
USBDRIVE=$1
USBMOUNTDIR=/tmp/temp-usb-mount

unetbootin isofile=$ISOFILE method=diskimage targetdrive="$USBDRIVE"1 installtype=USB autoinstall=yes
mount "$USBDRIVE"1 $USBMOUNTDIR

cd $USBMOUNTDIR
mv syslinux.cfg syslinux.old
mv isolinux/isolinux.cfg isolinux/syslinux.cfg
mv isolinux/isolinux.bin isolinux/syslinux.bin
mv isolinux syslinux

