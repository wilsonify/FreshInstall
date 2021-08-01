basepath=nccl_2.8.3-1+cuda11.1_x86_64
txzfile=nccl_2.8.3-1+cuda11.1_x86_64.txz
# wget https://developer.nvidia.com/compute/machine-learning/nccl/secure/2.8.3/agnostic/x64/$txzfile
# tar -xfv $txzfile
sudo cp $basepath/include/* /usr/local/cuda/include
sudo cp $basepath/lib/* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/nccl*.h
sudo chmod a+r /usr/local/cuda/lib64/libnccl*