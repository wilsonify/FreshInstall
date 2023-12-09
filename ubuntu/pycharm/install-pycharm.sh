echo " Download pycharm-community "
wget https://download.jetbrains.com/python/pycharm-community-2023.3.tar.gz
tar -xzf pycharm-community-2023.3.tar.gz
mkdir -p /opt/pycharm-community
mv pycharm-community-2023.3/* /opt/pycharm-community/2023.3
sudo cp com.jetbrains.pycharm.desktop /usr/share/applications