#! /bin/bash

wget https://dl-ssl.google.com/linux/linux_signing_key.pub

rpm --import linux_signing_key.pub

sh -c 'echo "[google-chrome]
name=Google Chrome 32-bit
baseurl=http://dl.google.com/linux/chrome/rpm/stable/i386" >> /etc/yum.repos.d/google-chrome.repo'

yum update
