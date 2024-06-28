# Ubuntu* 20.04 (focal)

# To install the latest general purpose GPU (GPGPU) software packages on Ubuntu 20.04 (focal),
# add the Intel® software package repository and install the appropriate packages.

# Add package repository
# To install the repositories.intel.com/graphics package repository,
# add the following to your Ubuntu installation.
# Prior to copy/pasting to your console,
# you may want to run sudo ls and enter your password to prevent the commands from being swallowed by the sudo password prompt:

sudo apt-get install -y gpg-agent wget
wget -qO - https://repositories.intel.com/graphics/intel-graphics.key | sudo apt-key add -
sudo apt-add-repository 'deb [arch=amd64] https://repositories.intel.com/graphics/ubuntu focal main'

# The above will make sure your system has gpg-agent and wget installed. It will then download and install the public key used to verify the integrity of the package repository. Finally, it adds the repositories.intel.com/graphics repository to the system.
# Install run-time packages
# After adding the repository, you can install the GPU software packages by running the following:

sudo apt-get update
sudo apt-get install \
  intel-opencl-icd \
  intel-level-zero-gpu \
  level-zero \
  intel-media-va-driver-non-free \
  libmfx1

# OPTIONAL: Install developer packages
# If you will be doing development, you may want to install optional development packages. oneAPI users will need to install these packages for some of the oneAPI tools to function correctly:

sudo apt-get install \
  libigc-dev \
  intel-igc-cm \
  libigdfcl-dev \
  libigfxcmrt-dev \
  level-zero-dev

# Configuring permissions
# In order to access GPU capabilities, a user needs to have the correct permissions on system.
# The following will list the group assigned ownership of the render nodes,
# and list the groups the active user is a member of:
stat -c "%G" /dev/dri/render*
groups ${USER}

# If a group is listed for the render node which isn’t listed for the user,
# you will need to add the user to the group using gpasswd.
# In the following, the active user will be added to the ‘render’ group
# and a new shell spawned with that group active:
sudo gpasswd -a ${USER} render
newgrp render
