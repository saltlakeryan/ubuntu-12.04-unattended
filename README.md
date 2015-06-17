Create (Mostly) Unattended Install of UBUNTU
====
Customize cd-files/ks.cfg according to your needs.

Create CD image with:

     ./make.sh path_to_ubuntu_cd_.iso

Which creates /tmp/custom.iso

The image can then be burned to disc

If you have unetbootin, you can then run 

     ./unetbootin-to-stick.sh

to copy the iso file to /dev/sdb


Requirements
---
I built and tested this from an ubuntu machine, though it may work on other linux distros.
It uses mkisofs, so you may want to "apt-get install mkisofs".  It creates some big temp files
so you'll need a couple of gigs of free space for that.



Reference
----

Based on :
* http://pricklytech.wordpress.com/2013/04/21/ubuntu-server-unattended-installation-custom-cd/
* https://raw.github.com/autotest/virt-test/master/shared/unattended/Ubuntu-12-04.preseed
* https://help.ubuntu.com/community/InstallCDCustomization
* http://www.utech.de/2013/05/shell-script-creating-a-cd-for-unattended-ubuntu-server-installations/
