echo "Install CUDA Toolkit"
sudo apt install nvidia-cuda-toolkit

echo "We also need to set the CUDA_PATH. Add this"
: ${CUDA_PATH=/usr}
export CUDA_PATH

echo "for persistence add to your .bashrc

export CUDA_PATH=/usr

"

echo "Now your CUDA installation should be complete
nvidia-smi should indicate that you have CUDA 11.1 installed.
"
nvidia-smi

echo "Test the CUDA toolkit installation /configuration"

echo " One of the best way to verify whether CUDA is properly installed is using the official CUDA-sample.
Ubuntu does not package them as part of nvidia-cuda-toolkit
but we can download them directly from NVIDIA's github page:
"
wget https://github.com/NVIDIA/cuda-samples/archive/v11.1.tar.gz
tar xzf v11.1.tar.gz
cd cuda-samples-11.1/Sample

echo "
For whatever reason, NVIDIA did not chose to include a modern build system (e.g. cmake),
but ships a plain old Makefile instead.
If just running make does not work for you,
carefully read the error messages and see whether e.g. some required dependencies are not installed.

In order to help the build process a little, it might be advisable to specify the compute architecture of your GPU.

You can find out your GPU by running nvidia-smi.
Next google your GPU to find out the corresponding compute architecture.
For the Quadro RTX 3000, it is turing, version 7.5.
Specify the architecture version when running make, e.g.

make SMS='75'

If the compilation was successful, you can try out one of the samples. For instance:

You should see the following or similar output:

M: 4096 (16 x 256)
N: 4096 (16 x 256)
K: 4096 (16 x 256)
Preparing data for GPU...
Required shared memory size: 64 Kb
Computing... using high performance kernel compute_gemm_imma
Time: 6.030176 ms
TOPS: 22.79

"

./bin/x86_64/linux/release/immaTensorCoreGemm
