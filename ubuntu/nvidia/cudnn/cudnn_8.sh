basedir=/media/thom/seagate01/software/nvidia-cudnn
basepath=cudnn-10.2-linux-x64-v8.0.4.30
tgzfile=$basepath.tgz
#wget https://developer.nvidia.com/compute/machine-learning/cudnn/secure/8.0.4/10.2_20200923/$tgzfile
#tar -xzvf $tgzfile
#mv $basepath $basedir
echo "sudo cp -r $basedir/$basepath/cuda/include/* /usr/local/cuda/include"
sudo cp -r $basedir/$basepath/cuda/include/* /usr/local/cuda/include
echo "done"

echo "sudo cp -r $basedir/$basepath/cuda/lib64/* /usr/local/cuda/lib64"
sudo cp -r $basedir/$basepath/cuda/lib64/* /usr/local/cuda/lib64
echo "done"

echo "sudo chmod -R a+r /usr/local/cuda"
sudo chmod -R a+r /usr/local/cuda
echo "done"

echo "check installation"
cat /usr/local/cuda/include/cudnn.h | grep CUDNN_MAJOR -A 2
echo "done"