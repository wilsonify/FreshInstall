basepath=cudnn-10.2-linux-x64-v8.0.4.30
tgzfile=$basepath.tgz
#wget https://developer.nvidia.com/compute/machine-learning/cudnn/secure/8.0.4/10.2_20200923/$tgzfile
#tar -xzvf $tgzfile
sudo cp -r $basepath/cuda/include/* /usr/local/cuda/include
sudo cp -r $basepath/cuda/lib64/* /usr/local/cuda/lib64
sudo chmod -R a+r /usr/local/cuda