sudo apt remove nvidia*
sudo apt-get autoremove

sudo apt-get purge *nvidia*
sudo apt-get autoremove

sudo dpkg -P "$(dpkg -l | grep nvidia | awk '{print $2}')"
sudo apt autoremove
