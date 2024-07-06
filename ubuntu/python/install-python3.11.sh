# first upgrade current packages
sudo apt update && sudo apt upgrade

# install build requirements
sudo apt-get install wget build-essential checkinstall
sudo apt-get install \
libbz2-dev \
libc6-dev \
libffi-dev \
libgdbm-dev \
libncursesw5-dev \
libreadline-dev \
libsqlite3-dev \
libssl-dev \
tk-dev \
zlib1g-dev

# Download the latest release’s source code from the Python download page using wget :
sudo wget https://www.python.org/ftp/python/3.11.4/Python-3.11.4.tgz
sudo tar xzf Python-3.11.4.tgz
sudo mv Python-3.11.4 /usr/src

# The --enable-optimizations option optimizes the Python binary by running multiple tests.
# altinstall prevents replacing the default python binary file /usr/bin/python.
cd /usr/src/Python-3.11.4 && ./configure --enable-optimizations && sudo make -j 8 altinstall
python3.11 --version