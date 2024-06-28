
# Installing Deno
# using version 1.7.5.
# This is one of the rare parts of this book where things might differ, depending on your operating system. 
# After the installation is complete, it doesn't make a difference how you installed Deno.
# Let's get practical and install Deno on our machines. 
# The following bullet points show you
# how to install the runtime on different operating systems:
# • Shell (Mac, Linux):
curl -fsSL https://deno.land/x/install/install.sh | sh -s v1.7.5

# • PowerShell (Windows):
# $v="1.7.5"; iwr https://deno.land/x/install/install.ps1 -useb | iex

# symlink 
sudo mkdir -p /opt/deno
sudo mv -r ~/.deno/* /opt/deno
sudo ln -s /opt/deno/bin/deno /usr/bin/deno

# Then, to make sure everything worked, let's get the current Deno version by running the
# following command:
deno --version

# output:
# deno 1.7.5 (release, x86_64-apple-darwin)
# v8 9.0.123
# typescript 4.1.4