#! /bin/bash

sudo apt-key adv --fetch-keys https://dl-ssl.google.com/linux/linux_signing_key.pub
sudo apt-add-repository 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main'
sudo apt-get install google-chrome-stable


