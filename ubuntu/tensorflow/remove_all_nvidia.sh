sudo apt remove nvidia*
sudo dpkg -P "$(dpkg -l | grep nvidia | awk '{print $2}')"
sudo apt autoremove
