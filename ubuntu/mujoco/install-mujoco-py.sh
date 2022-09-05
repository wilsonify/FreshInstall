sudo apt install libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev libgl-dev
git submodule update --init --recursive
# Building MuJoCo from source
# To build MuJoCo from source,
# you will need CMake and a working C++17 compiler installed.
# The steps are:
# Clone the mujoco repository from GitHub.
# Create a new build directory somewhere, and cd into it.
mkdir -p build && cd build && cmake .. && cmake --build .
# MuJoCo’s build system automatically fetches dependencies
# from upstream repositories over the Internet using CMake’s FetchContent module.
# The main CMake setup will build the MuJoCo library itself along with all sample applications,
# but the Python bindings are not built.
# Those come with their own build instructions,
# which can be found in the Python Bindings section of the documentation.

# Additionally, the CMake setup also implements an installation phase
# which will copy and organize the output files to a target directory.
# Specify the directory using cmake $PATH_TO_CLONED_REPO -DCMAKE_INSTALL_PREFIX=<my_install_dir>.
# After successfully building MuJoCo following the instructions above,
# you can install it using cmake --install ..

cd mujoco-py
pip install -e .
pip install glfw>=1.8.3 requests
