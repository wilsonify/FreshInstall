echo "Start downloading Julia"
wget https://julialang-s3.julialang.org/bin/linux/x64/1.7/julia-1.7.2-linux-x86_64.tar.gz
echo "Done downloading Julia"
echo "Start extracting Julia"
tar -xvzf julia-1.7.2-linux-x86_64.tar.gz
echo "Done extracting Julia"
echo "Start Installing Julia"
sudo mv julia-1.7.2 /opt
sudo ln -s /opt/julia-1.7.2/bin/julia /usr/local/bin/julia
echo "Done Installing Julia"