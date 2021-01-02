# Groovy (20.10) - Last update : Sat, 02 Jan 2021 10:23:43 UTC / Revision: 20210101105310+9a90c4ea8a05
# i386 not available
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-add-repository 'deb http://apt.llvm.org/groovy/ llvm-toolchain-groovy main'
sudo apt-get install llvm-11-dev
#libllvm-11-ocaml-dev \
#libllvm11 \
#llvm-11 \
#llvm-11-doc \
#llvm-11-examples \
#llvm-11-runtime