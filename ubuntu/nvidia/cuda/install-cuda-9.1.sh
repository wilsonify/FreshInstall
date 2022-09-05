sudo sh /mnt/SSD2/nvidia-cuda/cuda-9.1/cuda_9.1.85_387.26_linux.run \
--silent \
--toolkit \
--toolkitpath=/usr/local/cuda-9.1 \
--samples \
--samplespath=/usr/local/cuda-9.1/NVIDIA_CUDA-9.1_Samples \
--verbose

sudo ln -s /usr/bin/gcc-6 /usr/local/cuda-9.1/bin/gcc
sudo ln -s /usr/bin/g++-6 /usr/local/cuda-9.1/bin/g++