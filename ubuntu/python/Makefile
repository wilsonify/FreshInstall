# setup noaskpass to satisfy sudo password prompt
# sudo visudo
# <USERNAME> ALL=NOPASSWD: /usr/bin/apt-get, /usr/bin/make, /usr/bin/mv, /usr/src/Python-3.6.14/configure, /usr/src/Python-3.7.9/configure, /usr/src/Python-3.8.12/configure, /usr/src/Python-3.9.9/configure, /usr/src/Python-3.11.0b4/configure

VERSION36 := "3.6.15"
VERSION37 := "3.7.13"
VERSION38 := "3.8.13"
VERSION39 := "3.9.12"
VERSION310 := "3.10.4" # NOTE: python3.10 is the system python in ubuntu 22.04
VERSION311 := "3.11.0b4"

all: clean \
/usr/bin/python3.6 \
/usr/bin/python3.7 \
/usr/bin/python3.8 \
/usr/bin/python3.9 \
/usr/bin/python3.11 \
test

clean:
	rm -f *.tgz
	rm -rf Python-*

dependencies.txt:
	sudo apt-get -y update && \
	sudo apt-get -y upgrade && \
	sudo apt-get -y install \
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
	liblzma-dev \
	libgdbm-dev && \
	echo "installed" > dependencies.txt

# python3.6
Python-$(VERSION36).tgz:
	wget https://www.python.org/ftp/python/$(VERSION36)/Python-$(VERSION36).tgz

Python-$(VERSION36)/configure: Python-$(VERSION36).tgz
	tar xzf Python-$(VERSION36).tgz

/usr/src/Python-$(VERSION36)/configure: Python-$(VERSION36)/configure
	sudo mv Python-$(VERSION36) /usr/src

/usr/src/Python-$(VERSION36)/pybuilddir.txt: /usr/src/Python-$(VERSION36)/configure
	cd /usr/src/Python-$(VERSION36) && sudo ./configure --enable-optimizations

/usr/bin/python3.6: /usr/src/Python-$(VERSION36)/pybuilddir.txt dependencies.txt
	cd /usr/src/Python-$(VERSION36) && time sudo make -j 8 altinstall

# python3.7
Python-$(VERSION37).tgz:
	wget https://www.python.org/ftp/python/$(VERSION37)/Python-$(VERSION37).tgz

Python-$(VERSION37)/configure: Python-$(VERSION37).tgz
	tar xzf Python-$(VERSION37).tgz

/usr/src/Python-$(VERSION37)/configure: Python-$(VERSION37)/configure
	sudo mv Python-$(VERSION37) /usr/src

/usr/src/Python-$(VERSION37)/pybuilddir.txt: /usr/src/Python-$(VERSION37)/configure
	cd /usr/src/Python-$(VERSION37) && sudo ./configure --enable-optimizations

/usr/bin/python3.7: /usr/src/Python-$(VERSION37)/pybuilddir.txt dependencies.txt
	cd /usr/src/Python-$(VERSION37) && time sudo make -j 8 altinstall

# python3.8
Python-$(VERSION38).tgz:
	wget https://www.python.org/ftp/python/$(VERSION38)/Python-$(VERSION38).tgz

Python-$(VERSION38)/configure: Python-$(VERSION38).tgz
	tar xzf Python-$(VERSION38).tgz

/usr/src/Python-$(VERSION38)/configure: Python-$(VERSION38)/configure
	sudo mv Python-$(VERSION38) /usr/src

/usr/src/Python-$(VERSION38)/pybuilddir.txt: /usr/src/Python-$(VERSION38)/configure
	cd /usr/src/Python-$(VERSION38) && sudo ./configure --enable-optimizations

/usr/bin/python3.8: /usr/src/Python-$(VERSION38)/pybuilddir.txt dependencies.txt
	cd /usr/src/Python-$(VERSION38) && time sudo make -j 8 altinstall

# python3.9
Python-$(VERSION39).tgz:
	wget https://www.python.org/ftp/python/$(VERSION39)/Python-$(VERSION39).tgz

Python-$(VERSION39)/configure: Python-$(VERSION39).tgz
	tar xzf Python-$(VERSION39).tgz

/usr/src/Python-$(VERSION39)/configure: Python-$(VERSION39)/configure
	sudo mv Python-$(VERSION39) /usr/src

/usr/src/Python-$(VERSION39)/pybuilddir.txt: /usr/src/Python-$(VERSION39)/configure
	cd /usr/src/Python-$(VERSION39) && sudo ./configure --enable-optimizations

/usr/bin/python3.9: /usr/src/Python-$(VERSION39)/pybuilddir.txt dependencies.txt
	cd /usr/src/Python-$(VERSION39) && time sudo make -j 8 altinstall

# python310
Python-$(VERSION310).tgz:
	wget https://www.python.org/ftp/python/$(VERSION310)/Python-$(VERSION310).tgz

Python-$(VERSION310)/configure: Python-$(VERSION310).tgz
	tar xzf Python-$(VERSION310).tgz

/usr/src/Python-$(VERSION310)/configure: Python-$(VERSION310)/configure
	sudo mv Python-$(VERSION310) /usr/src

/usr/src/Python-$(VERSION310)/pybuilddir.txt: /usr/src/Python-$(VERSION310)/configure
	cd /usr/src/Python-$(VERSION310) && sudo ./configure --enable-optimizations

/usr/bin/python3.10: /usr/src/Python-$(VERSION310)/pybuilddir.txt dependencies.txt
	cd /usr/src/Python-$(VERSION310) && time sudo make -j 8 altinstall

# python3.11
Python-$(VERSION311).tgz:
	wget https://www.python.org/ftp/python/3.11.0/Python-$(VERSION311).tgz

Python-$(VERSION311)/configure: Python-$(VERSION311).tgz
	tar xzf Python-$(VERSION311).tgz

/usr/src/Python-$(VERSION311)/configure: Python-$(VERSION311)/configure
	sudo mv Python-$(VERSION311) /usr/src

/usr/src/Python-$(VERSION311)/pybuilddir.txt: /usr/src/Python-$(VERSION311)/configure
	cd /usr/src/Python-$(VERSION311) && sudo ./configure --enable-optimizations

/usr/bin/python3.11: /usr/src/Python-$(VERSION311)/pybuilddir.txt dependencies.txt
	cd /usr/src/Python-$(VERSION311) && time sudo make -j 8 altinstall

test:
	python3.6 --version
	python3.7 --version
	python3.8 --version
	python3.9 --version
	python3.10 --version
	python3.11 --version

alternatives: test
	./alternative-python.sh