# https://dgpu-docs.intel.com/installation-guides/ubuntu/ubuntu-focal.html

echo "Add package repository"

echo "install the repositories.intel.com/graphics package repository"

echo "make sure your system has gpg-agent and wget installed."
sudo apt-get install -y gpg-agent wget

echo "download and install the public key used to verify the integrity of the package repository."
wget -qO - https://repositories.intel.com/graphics/intel-graphics.key | sudo apt-key add -

echo "add the repositories.intel.com/graphics repository to the system"
sudo apt-add-repository 'deb [arch=amd64] https://repositories.intel.com/graphics/ubuntu focal main'

echo "Install run-time packages"

echo "install the GPU software packages"

sudo apt-get update
sudo apt-get install \
intel-opencl-icd \
intel-level-zero-gpu \
level-zero \
intel-media-va-driver-non-free \
libmfx1

echo "Install developer packages"

# oneAPI users will need to install these packages for some of the oneAPI tools to function correctly:

sudo apt-get install \
libigc-dev \
intel-igc-cm \
libigdfcl-dev \
libigfxcmrt-dev \
level-zero-dev \
ocl-icd-opencl-dev

echo "Configuring permissions"

# In order to access GPU capabilities,
# a user needs to have the correct permissions on system.
# The following will list the group assigned ownership of the render nodes,
# and list the groups the active user is a member of:

stat -c "%G" /dev/dri/render*
groups ${USER}

# If a group is listed for the render node which isn’t listed for the user,
# you will need to add the user to the group using gpasswd.
# In the following, the active user will be added to the ‘render’ group and a new shell spawned with that group active:

sudo gpasswd -a ${USER} render
newgrp render

echo "download ZLUDA"
wget https://github.com/vosen/ZLUDA/releases/download/v2/zluda-2-linux.zip
unzip zluda-2-linux.zip

echo "install ZLUDA"
mkdir /usr/local/cuda
mkdir /usr/local/cuda/bin

cp zluda-2-linux/* /usr/local/cuda/bin
ln -s libnvcuda.so /usr/local/cuda/bin/libcuda.so
ln -s libcuda.so /usr/local/cuda/bin/libcuda.so.1

echo "add ZLUDA to path"
export PATH=$PATH:/usr/local/cuda/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/bin
