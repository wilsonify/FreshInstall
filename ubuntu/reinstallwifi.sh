#!/bin/bash
# git clone https://github.com/aircrack-ng/rtl8812au.git
sudo apt remove rtl8812au-dkms
cd rtl8812au
sudo make dkms_remove
sudo make dkms_install
sudo service NetworkManager restart
