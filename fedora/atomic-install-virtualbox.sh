#! /bin/bash

cd /etc/yum.repos.d/
wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
dnf update
rpm -qa kernel |sort -V |tail -n 1
uname -r
dnf install binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms qt5-qtx11extras libxkbcommon
dnf install VirtualBox-6.0
/usr/lib/virtualbox/vboxdrv.sh setup
usermod -a -G vboxusers user_name
KERN_DIR=/usr/src/kernels/`uname -r`
export KERN_DIR
