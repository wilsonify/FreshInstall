sudo sh /mnt/SSD2/nvidia-cuda/cuda-10.2/cuda_10.2.89_440.33.01_linux.run \
--silent \
--toolkit \
--toolkitpath=/usr/local/cuda-10.2 \
--samples \
--samplespath=/usr/local/cuda-10.2/NVIDIA_CUDA-10.2_Samples

sudo ln -s /usr/bin/gcc-8 /usr/local/cuda-10.2/bin/gcc
sudo ln -s /usr/bin/g++-8 /usr/local/cuda-10.2/bin/g++