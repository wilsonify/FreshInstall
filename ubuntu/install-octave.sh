# Octave for Debian systems
# how to install GNU Octave on Debian, and Debian-based distributions such as Ubuntu.

# The right way is to install all the dependencies listed on the Building wiki page. \
# One can either search for the respective packages manually on https://packages.debian.org https://packages.ubuntu.com

sudo apt-get install -y\
gcc \
g++ \
gfortran \
make \
libblas-dev \
liblapack-dev \
libpcre3-dev \
libarpack2-dev \
libcurl4-gnutls-dev \
epstool \
libfftw3-dev \
fig2dev \
libfltk1.3-dev \
libfontconfig1-dev \
libfreetype6-dev \
libgl2ps-dev \
libglpk-dev \
libreadline-dev \
gnuplot-x11 \
libgraphicsmagick++1-dev \
libhdf5-dev \
openjdk-8-jdk \
libsndfile1-dev \
llvm-dev \
texinfo \
libgl1-mesa-dev \
libosmesa6-dev \
pstoedit \
portaudio19-dev \
libqhull-dev \
libqrupdate-dev \
libsuitesparse-dev \
texlive-latex-extra \
libxft-dev \
zlib1g-dev \
autoconf \
automake \
bison \
flex \
gperf \
gzip \
icoutils \
librsvg2-bin \
libtool \
perl \
rsync \
tar \
qtbase5-dev \
qttools5-dev \
qttools5-dev-tools \
libqscintilla2-qt5-dev \
libsundials-dev

# Installing Octave
# Binary packages for GNU Octave and many Octave Forge packages are provided by all versions of Debian and Ubuntu.
# These are the most well-tested binaries available and should work best for most users. To install them, run:

sudo apt-get install -y octave

# In Debian and Ubuntu the "complete" GNU Octave software is split over multiple packages.
# To obtain the complete features of Octave, install additionally
# for the documentation: octave-doc, octave-info, and octave-htmldoc
# for the octave development header files and mkoctfile: liboctave-dev
# for the debugging symbols: octave-dbg

# Many Octave packages are also distributed by Debian and Ubuntu.
# These are tested to work the best with the respective Octave version. Install them via:

sudo apt-get install -y \
octave-control \
octave-image \
octave-io \
octave-optim \
octave-signal \
octave-statistics

# Up to 2018, the GNU Octave Team on Launchpad actively maintained a PPA providing more up to date packages of Octave.
# These are backported from Debian unstable and are still useful for older Ubuntu installations.
# To set up your system to install these packages, run:
#sudo apt-add-repository ppa:octave/stable
#sudo apt-get update
#sudo apt-get install octave

