
# add olo apt repo for old gcc
sudo apt-add-repository 'deb http://us.archive.ubuntu.com/ubuntu/ bionic main universe'
sudo apt install gcc-6 g++-6
sudo apt install gcc-7 g++-7
sudo apt install gcc-8 g++-8
sudo apt install gcc-9 g++-9
sudo apt install gcc-10 g++-10
sudo apt install gcc-11 g++-11

# erase exiting update-alternatives setup for gcc and g++:
sudo update-alternatives --remove-all gcc
sudo update-alternatives --remove-all g++

# Install Alternatives
# Symbolic links cc and c++ are installed by default.
# 10, 20 and 30 options are the priorities for each alternative, bigger number is a higher priority.

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 10
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 20
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 30
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 40
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 50
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 60
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 10
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 20
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 30
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-9 40
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 50
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 60

# Configure Alternatives
# configuring the default commands for gcc, g++. It's easy to switch interactively:
sudo update-alternatives --config gcc
sudo update-alternatives --config g++

# Add symlinks within CUDA folders:
sudo ln -s /usr/bin/gcc-6 /usr/local/cuda-9.1/bin/gcc
sudo ln -s /usr/bin/g++-6 /usr/local/cuda-9.1/bin/g++

