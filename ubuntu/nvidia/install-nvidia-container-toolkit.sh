
# [Installation Guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#)
# Supported Platforms
# The NVIDIA Container Toolkit is available on a variety of Linux distributions and supports different container engines.
# Note
# As of NVIDIA Container Toolkit 1.7.0 (nvidia-docker2 >= 2.8.0) support for Jetson platforms is included
# for Ubuntu 18.04, Ubuntu 20.04, and Ubuntu 22.04 distributions.

# This means that the installation instructions provided for these distributions are expected to work on Jetson devices.
# Linux Distributions
# Step 2: Install NVIDIA Container Toolkit
# After installing containerd,
# we can proceed to install the NVIDIA Container Toolkit.
# For containerd, we need to use the nvidia-container-toolkit package.
# See the architecture overview for more details on the package hierarchy.

echo "First, setup the package repository and GPG key:"
distribution=$(. /etc/os-release; echo $ID$VERSION_ID)

curl -s -L https://nvidia.github.io/libnvidia-container/gpgkey | sudo apt-key add -

curl -s -L "https://nvidia.github.io/libnvidia-container/$distribution/libnvidia-container.list" | \
sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
echo "done, setting the package repository and GPG key:"

echo "Now, install the NVIDIA Container Toolkit:"
sudo apt-get -y update && sudo apt-get install -y nvidia-container-toolkit
echo "Done, installing the NVIDIA Container Toolkit:"