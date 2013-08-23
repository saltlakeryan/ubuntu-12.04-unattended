Create (Mostly) Unattended Install of UBUNTU
====

Create CD image with:
./make.sh path_to_ubuntu_cd_.iso

Based on :
* http://pricklytech.wordpress.com/2013/04/21/ubuntu-server-unattended-installation-custom-cd/
* https://raw.github.com/autotest/virt-test/master/shared/unattended/Ubuntu-12-04.preseed
* https://help.ubuntu.com/community/InstallCDCustomization
* http://www.utech.de/2013/05/shell-script-creating-a-cd-for-unattended-ubuntu-server-installations/

USB Image
---

According to https://help.ubuntu.com/10.04/installation-guide/i386/preseed-using.html:
	if you're installing from USB media (put the preconfiguration file in the
	  toplevel directory of the USB stick):
	  preseed/file=/hd-media/preseed.cfg
	  preseed/file/checksum=5da499872becccfeda2c4872f9171c3d

Also, kickstart has the directive cdrom, which can alternately be set to harddrive.


