# erase existing update-alternatives setup for python
sudo update-alternatives --remove-all python
sudo update-alternatives --remove-all python3

# Install Alternatives bigger number is higher priority.
# note: python3.10 is the system default on ubuntu 22.04
sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python3.11 50
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.10 40
sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python3.9 30
sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python3.8 20
sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python3.7 10
sudo update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.11 50
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 40
sudo update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.9 30
sudo update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.8 20
sudo update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.7 10

# Configure Alternatives
# configuring the default commands for gcc, g++. It's easy to switch interactively:
sudo update-alternatives --config python
