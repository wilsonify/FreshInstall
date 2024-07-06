# first upgrade current packages
sudo apt update && sudo apt upgrade

# install build requirements
sudo apt-get install \
wget \
build-essential \
zlib1g-dev \
checkinstall \
libbz2-dev \
libc6-dev \
libffi-dev \
libgdbm-dev \
libncursesw5-dev \
libreadline-dev \
libsqlite3-dev \
libssl-dev \
tk-dev \

# Download the latest release’s source code from the Python download page using wget :
sudo wget https://www.python.org/ftp/python/3.6.14/Python-3.6.14.tgz
sudo tar xzf Python-3.6.14.tgz
sudo mv Python-3.6.14 /usr/src

# The --enable-optimizations option optimizes the Python binary by running multiple tests.
# altinstall prevents replacing the default python binary file /usr/bin/python.

pushd /usr/src/Python-3.6.14
sudo ./configure --enable-optimizations && sudo make -j 8 altinstall
popd

python3.6 --version