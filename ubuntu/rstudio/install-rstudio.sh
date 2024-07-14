
echo "start update indices"
sudo apt update -qq
echo "done update indices"

echo "start install two helper packages we need, software-properties-common and dirmngr"
sudo apt install --no-install-recommends software-properties-common dirmngr
echo "done install two helper packages we need, software-properties-common and dirmngr"

echo "start add signing key (by Michael Rutter) for these repos"
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
echo "start add signing key (by Michael Rutter) for these repos"

echo "start verify key Fingerprint: E298A3A825C0D65DFD57CBB651716619E084DAB9"
gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
echo "done verify key"

echo "start add the R 4.0 repo from CRAN"
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
echo "done add the R 4.0 repo from CRAN"

# How to install RStudio on Ubuntu 20.04 step by step instructions
# First, we need to install all prerequisites. Open up a terminal and enter:
sudo apt update -y

echo "start install r"
sudo apt install --no-install-recommends r-base gdebi-core
echo "done install r"

# Next, download the Rstudio *.deb package from the official Rstudio website.
# Head for the most recent Ubuntu release available,
# meaning if the Ubuntu 20 - focal package is not available,
# download the Ubuntu 18 - bionic version. Example of downloaded package:

echo "start download r-studio"
wget https://s3.amazonaws.com/rstudio-ide-build/desktop/jammy/amd64/rstudio-2022.07.3-582-amd64.deb
echo "done download r-studio"

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
sudo gdebi rstudio-2022.07.3-582-amd64.deb

# Use your desktop menu to start the RStudio application.

