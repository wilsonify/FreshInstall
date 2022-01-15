MAJOR="11"
MINOR="4"
PATCH="3"
DRIVER="470.82.01"
RUNFILE="cuda_${MAJOR}.${MINOR}.${PATCH}_${DRIVER}_linux.run"
echo "RUNFILE = ${RUNFILE}"

LOCATION="/mnt/SSD2/nvidia-cuda/cuda-${MAJOR}.${MINOR}"
echo "LOCATION = ${LOCATION}"


RUNPATH="${LOCATION}/${RUNFILE}"
echo "RUNPATH = ${RUNPATH}"

toolkitpath="/usr/local/cuda-${MAJOR}.${MINOR}"
echo "toolkitpath = ${toolkitpath}"

samplespath="/usr/local/cuda-${MAJOR}.${MINOR}/NVIDIA_CUDA-${MAJOR}.${MINOR}_Samples"
echo "samplespath = ${samplespath}"

sudo sh $RUNPATH \
  --silent \
  --toolkit \
  --toolkitpath=$toolkitpath \
  --samples \
  --samplespath=$samplespath

sudo ln -s /usr/bin/gcc-9 "/usr/local/cuda-${MAJOR}.${MINOR}/bin/gcc"
sudo ln -s /usr/bin/g++-9 "/usr/local/cuda-${MAJOR}.${MINOR}/bin/g++"
