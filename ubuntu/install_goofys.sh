#!/bin/bash
wget https://github.com/kahing/goofys/releases/download/v0.24.0/goofys
sudo mv goofys /usr/local/bin
sudo chown root /usr/local/bin/goofys
sudo chgrp root /usr/local/bin/goofys
sudo chmod +x /usr/local/bin/goofys