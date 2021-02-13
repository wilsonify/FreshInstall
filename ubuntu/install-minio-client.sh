#!/bin/bash
wget https://dl.min.io/client/mc/release/linux-amd64/mc
sudo mv mc /usr/local/bin
sudo chown root /usr/local/bin/mc
sudo chgrp root /usr/local/bin/mc
sudo chmod +x /usr/local/bin/mc