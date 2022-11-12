sudo apt remove libreoffice*
sudo apt-get autoremove

sudo apt-get purge *libreoffice*
sudo apt-get autoremove

sudo dpkg -P "$(dpkg -l | grep libreoffice | awk '{print $2}')"
sudo apt autoremove
