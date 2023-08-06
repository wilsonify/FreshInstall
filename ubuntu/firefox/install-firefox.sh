wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/116.0.1/linux-x86_64/en-US/firefox-116.0.1.tar.bz2
tar -xzf firefox-116.0.1.tar.bz2
mv firefox-116.0.1/ /opt/firefox/
sudo update-alternatives --install /usr/bin/firefox firefox /opt/firefox/firefox-116.0.1/firefox/firefox 90
sudo cp firefox.desktop /usr/share/applications