sudo sh /media/thom/seagate01/software/nvidia-cuda/cuda-10.2/cuda_10.2.89_440.33.01_linux.run \
--silent \
--toolkit \
--toolkitpath=/usr/local/cuda-10.2 \
--samples \
--samplespath=/usr/local/cuda-10.2/NVIDIA_CUDA-10.2_Samples

sudo ln -s /usr/bin/gcc-8 /usr/local/cuda-10.2/bin/gcc
sudo ln -s /usr/bin/g++-8 /usr/local/cuda-10.2/bin/g++

# 13. Post-installation Actions
cat /etc/environment | grep cuda-10
export PATH=${PATH}:/usr/local/cuda-10.2/bin
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/cuda-10.2/lib64

# The post-installation actions must be manually performed.
# These actions are split into mandatory, recommended, and optional sections.
# 13.1. Mandatory Actions
# Some actions must be taken after the installation before the CUDA Toolkit and Driver can be used.
# 13.1.1. Environment Setup
# The PATH variable needs to include
# Nsight Compute has moved to /opt/nvidia/nsight-compute/ only in rpm/deb installation method.
# When using .run installer it is still located under /usr/local/cuda-10.2/.
# To add this path to the PATH variable:
# export PATH=/usr/local/cuda-10.2/bin${PATH:+:${PATH}}
# In addition, when using the runfile installation method,
# the LD_LIBRARY_PATH variable needs to contain /usr/local/cuda-10.2/lib64 on a 64-bit system,
# or /usr/local/cuda-10.2/lib on a 32-bit system
# To change the environment variables for 64-bit operating systems:
# export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# To change the environment variables for 32-bit operating systems:
# export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# Note that the above paths change when using a custom install path with the runfile installation method.
# You will need to reboot the system to initialize the above changes.