#! /bin/bash

sudo apt-key adv --fetch-keys https://www.virtualbox.org/download/oracle_vbox_2016.asc
sudo apt-add-repository 'deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bionic contrib'
sudo apt-get install virtualbox-5.2


