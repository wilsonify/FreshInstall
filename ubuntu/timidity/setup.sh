#!/bin/bash
echo "Start TiMidity++ setup"

echo "Start Install TiMidity++ if not already installed"
sudo apt-get update && sudo apt-get install -y timidity
echo "Done Install TiMidity++ if not already installed"

echo "Start Create the systemd service file"
sudo cp timidity.service /etc/systemd/system/
echo "Done Create the systemd service file"

echo "Reload systemd and enable the service"
sudo systemctl daemon-reload
sudo systemctl enable timidity.service
sudo systemctl start timidity.service
echo "Done Reload systemd and enable the service"

echo "Completed TiMidity++ setup"
