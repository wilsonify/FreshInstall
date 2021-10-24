# How to install RStudio on Ubuntu 20.04 step by step instructions
# First, we need to install all prerequisites. Open up a terminal and enter:
sudo apt update
sudo apt install r-base gdebi-core

# Next, download the Rstudio *.deb package from the official Rstudio website.
# Head for the most recent Ubuntu release available,
# meaning if the Ubuntu 20 - focal package is not available,
# download the Ubuntu 18 - bionic version. Example of downloaded package:
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2021.09.0-351-amd64.deb

# Use the gdebi command to install the previously downloaded package.
# The gdebi command will ensure that all additional prerequisites
# are also downloaded to fulfil the RStudio requirements:
# Gdebi is a light-weight app that helps you install deb files more effectively by handling dependencies.
# If you use Ubuntu you might be using the Software Center to install .deb executable files.
# Ubuntu Software Center is heavy. It may be good for finding application but it certainly is not worth
# using just for installing a .deb file.
#
# Once upon a time, Ubuntu used archive manager for installing .deb files but
# now Software Center is the default application for installing DEB files.
# if you are just trying to install a .deb file in Ubuntu,
# I would not recommend using the Software Center. It’s an overkill and waste of resources.
# I recommend using GDebi, a dedicated program for installing Debian executable files.
# It is lightweight and focused on installing .deb files.
sudo gdebi rstudio-2021.09.0-351-amd64.deb

# Use your desktop menu to start the RStudio application.