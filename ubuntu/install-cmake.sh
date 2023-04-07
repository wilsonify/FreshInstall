VERSION = "$VERSION"
# Check your current version
cmake --version

# Uninstall it
sudo apt remove cmake

# download the latest bash script from https://cmake.org/download/
wget https://github.com/Kitware/CMake/releases/download/v$VERSION/cmake-$VERSION-linux-x86_64.tar.gz
#wget https://github.com/Kitware/CMake/releases/download/v3.24.4/cmake-3.24.4-linux-x86_64.tar.gz
#wget https://github.com/Kitware/CMake/releases/download/v3.16.9/cmake-3.16.9-linux-x86_64.tar.gz

# Copy the script to /opt
sudo mv cmake-$VERSION-linux-x86_64.sh /opt

# Make the script executable:
sudo chmod +x /opt/cmake-$VERSION-linux-x86_64.sh

# Change to desired installation directory (to /opt/ for example)
# As of cmake 3.10.2 the installer no longer seems to install to /opt by default
sudo mkdir -p /opt/cmake
sudo bash /opt/cmake-$VERSION-linux-x86_64.sh --prefix=/opt/cmake --skip-license

# erase exiting update-alternatives setup
sudo update-alternatives --remove-all cmake

# Install Alternatives, bigger number is a higher priority.
sudo update-alternatives --install /usr/bin/cmake cmake /opt/cmake/cmake-3.16/bin/cmake 40
sudo update-alternatives --install /usr/bin/cmake cmake /opt/cmake/cmake-3.24/bin/cmake 50
sudo update-alternatives --install /usr/bin/cmake cmake /opt/cmake/cmake-3.26/bin/cmake 60

# Configure Alternatives
# configuring the default commands for gcc, g++. It's easy to switch interactively:
sudo update-alternatives --config cmake

#Test your results with:
cmake --version
