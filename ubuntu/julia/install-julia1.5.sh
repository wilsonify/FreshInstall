julia_major_version=1
julia_minor_version=5
julia_patch_version=4
major_minor=$julia_major_version.$julia_minor_version
full_version=$julia_major_version.$julia_minor_version.$julia_patch_version
echo "Start downloading Julia"
wget https://julialang-s3.julialang.org/bin/linux/x64/$major_minor/julia-$full_version-linux-x86_64.tar.gz
echo "Done downloading Julia"
echo "Start extracting Julia"
tar -xvzf julia-$full_version-linux-x86_64.tar.gz
echo "Done extracting Julia"
echo "Start Installing Julia"
mkdir -p /opt/julia/v$full_version
mv julia-$full_version/* /opt/julia/v$full_version
sudo update-alternatives --install /usr/bin/julia julia /opt/julia/v$full_version/bin/julia 20
rmdir julia-$full_version
echo "Done Installing Julia"