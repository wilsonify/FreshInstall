sudo sh /mnt/SSD2/nvidia-cuda/cuda-9.0/cuda_9.0.176_384.81_linux.run \
--silent \
--toolkit \
--toolkitpath=/usr/local/cuda-9.0 \
--samples \
--samplespath=/usr/local/cuda-9.0/NVIDIA_CUDA-9.0_Samples \
--verbose

sudo sh /mnt/SSD2/nvidia-cuda/cuda-9.0/cuda_9.0.176.1_linux.run --silent --accept-eula
sudo sh /mnt/SSD2/nvidia-cuda/cuda-9.0/cuda_9.0.176.2_linux.run --silent --accept-eula
sudo sh /mnt/SSD2/nvidia-cuda/cuda-9.0/cuda_9.0.176.3_linux.run --silent --accept-eula
sudo sh /mnt/SSD2/nvidia-cuda/cuda-9.0/cuda_9.0.176.4_linux.run --silent --accept-eula

sudo ln -s /usr/bin/gcc-5 /usr/local/cuda-9.0/bin/gcc
sudo ln -s /usr/bin/g++-5 /usr/local/cuda-9.0/bin/g++