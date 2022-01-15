# Install Desktop Environment
# If you run the desktop version of Ubuntu, skip this step.
# There are various desktop environments available in Ubuntu repositories that you can choose.
# One option is to install Gnome, which is the default desktop environment in Ubuntu 20.04.
# Depending on your system, downloading and installing GUI packages will take some time.

# Install Gnome:
sudo apt update && sudo apt install ubuntu-desktop

# Installing Xrdp
sudo apt install xrdp

# Once the installation is complete, the Xrdp service will automatically start. You can verify it by typing:
sudo systemctl status xrdp

# The output will look something like this:
# ● xrdp.service - xrdp daemon
#     Loaded: loaded (/lib/systemd/system/xrdp.service; enabled; vendor preset: enabled)
#     Active: active (running) since Fri 2020-05-22 17:36:16 UTC; 4min 41s ago

# By default Xrdp uses the /etc/ssl/private/ssl-cert-snakeoil.key
# file that is readable only by members of the “ssl-cert” group.
# Run the following command to add the xrdp user to the group :
sudo adduser $USER ssl-cert

# Restart the Xrdp service for changes to take effect:
# The Xrdp configuration files are located in the /etc/xrdp directory.
# For basic Xrdp connections, you do not need to make any changes to the configuration files.
# Xrdp uses the default X Window desktop environment (Gnome or XFCE).
# The main configuration file is named xrdp.ini .
# This file is divided into sections and allows you to
# set global configuration settings such as security and listening addresses and
# create different xrdp login sessions.
# Whenever you make any changes to the configuration file, you need to restart the Xrdp service.
# Xrdp uses startwm.sh file to launch the X session. If you want to use another X Window desktop, edit this file.

sudo systemctl restart xrdp

# Configuring Firewall
# The Xrdp daemon listens on port 3389 on all interfaces.
# If you run a firewall on your Ubuntu server , you’ll need to open the Xrdp port.
# To allow access to the Xrdp server from a specific IP address or IP range, for example, 192.168.33.0/24,
# you would run the following command:
# If you want to allow access from anywhere (which is highly discouraged for security reasons), run:

# sudo ufw allow from 192.168.33.0/24 to any port 3389
sudo ufw allow 3389


# Connecting to the Xrdp Server
# Now that you have set up your Xrdp server, it is time to open your Xrdp client and connect to the server.
# If you have a Windows PC, you can use the default RDP client.
# Type “remote” in the Windows search bar and click on “Remote Desktop Connection”.
# This will open up the RDP client.
# In the “Computer” field, enter the remote server IP address and click “Connect”.

# RDP Client
# On the login screen, enter your username and password and click “OK”.
# RDP Login
# Once logged in, you should see the default desktop.