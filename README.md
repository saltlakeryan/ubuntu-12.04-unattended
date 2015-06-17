Create (Mostly) Unattended Install of UBUNTU
====

Create an ubuntu install CD or USB with minimal interaction needed.
This uses the ubuntu-server version of the install ISO.

Warning
---
If you use the .ISO that is generated with the default preseed files
in this repo, that ISO will remove existing partitions and create
new blank partitions on the installation target WITHOUT PROMPTING
for input.  

Usage
---
1. Customize cd-files/ks.cfg according to your needs.

2. Create CD image with:

     sudo ./make.sh path_to_ubuntu_server_cd_.iso

   Which creates /tmp/custom.iso

3. Burn the image to disc, or 

4. Optionally, use unetbootin to copy image to usb

    If you have unetbootin, you can then run 

       ./unetbootin-to-stick.sh /dev/sdb

    to copy the iso file to /dev/sdb


Requirements
---
I built and tested this from an ubuntu machine, though it may work on other linux distros.
It uses mkisofs, so you may want to "apt-get install mkisofs".  It creates some big temp files
so you'll need a couple of gigs of free space for that.  You will need to start with an ubuntu
server iso file. Tested with ubuntu server 12.04 iso and ubuntu server 14.04 iso.


Reference
----

Based on :
* http://pricklytech.wordpress.com/2013/04/21/ubuntu-server-unattended-installation-custom-cd/
* https://raw.github.com/autotest/virt-test/master/shared/unattended/Ubuntu-12-04.preseed
* https://help.ubuntu.com/community/InstallCDCustomization
* http://www.utech.de/2013/05/shell-script-creating-a-cd-for-unattended-ubuntu-server-installations/
