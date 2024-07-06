# newer ubuntu starts at 3.8, sometimes I need older versions

# first upgrade current packages
sudo apt update && sudo apt upgrade

# install build requirements
sudo apt-get install \
wget \
build-essential \
checkinstall

sudo apt-get install \
libreadline-dev \
libncursesw5-dev libssl-dev \
libsqlite3-dev \
tk-dev \
libgdbm-dev \
libc6-dev \
libbz2-dev \
libffi-dev \
zlib1g-dev

# Download Python 3.7
# You can also download latest version in place of specified below.

sudo wget https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz
sudo tar xzf Python-3.7.9.tgz
sudo mv Python-3.7.9 /usr/src

# Step 2 – Install Python 3.7
# compile Python
cd /usr/src/Python-3.7.9
sudo ./configure --enable-optimizations
sudo make altinstall # altinstall prevents replacing the default python binary file /usr/bin/python.
python3.7 --version # Check Python Version