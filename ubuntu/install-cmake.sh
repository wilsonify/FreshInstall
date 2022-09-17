# Check your current version
cmake --version

# Uninstall it
sudo apt remove cmake

# download the latest bash script from https://cmake.org/download/
wget https://github.com/Kitware/CMake/releases/download/v3.24.2/cmake-3.24.2-linux-x86_64.sh

# Copy the script to /opt
sudo mv cmake-3.24.2-linux-x86_64.sh /opt

# Make the script executable:
sudo chmod +x /opt/cmake-3.24.2-linux-x86_64.sh

# Change to desired installation directory (to /opt/ for example)
# As of cmake 3.10.2 the installer no longer seems to install to /opt by default
sudo mkdir -p /opt/cmake
sudo bash /opt/cmake-3.24.2-linux-x86_64.sh --prefix=/opt/cmake --skip-license

# You will need to press y twice.
# The script installs the binary to /opt/cmake-3.*your_version*
# so in order to get the cmake command, make a symbolic link:
sudo ln -s /opt/cmake/bin/* /usr/local/bin

#Test your results with:
cmake --version

