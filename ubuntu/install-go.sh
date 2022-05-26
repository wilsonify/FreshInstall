#!/bin/bash
GO_TAR_FILE=go1.18.2.linux-amd64.tar.gz
PATH_ADDITION='export PATH=$PATH:/usr/local/go/bin'

echo "start download go"
wget "https://golang.org/dl/$GO_TAR_FILE"
echo "done download go"

# Remove any previous Go installation by deleting the /usr/local/go folder (if it exists),
# then extract the archive you just downloaded into /usr/local,
# creating a fresh Go tree in /usr/local/go:
echo "start Remove any previous Go"
sudo rm -rf /usr/local/go
echo "done Remove any previous Go"

echo "start extract zip"
sudo tar -C /usr/local -xzf $GO_TAR_FILE
echo "done extract zip"

# Do not untar the archive into an existing /usr/local/go tree.
# This is known to produce broken Go installations.
# Add /usr/local/go/bin to the PATH environment variable.
# You can do this by adding the following line to your
# $HOME/.profile or /etc/profile (for a system-wide installation):

# Note: Changes made to a profile file may not apply until the next time you log into your computer.
# To apply the changes immediately, just run the shell commands directly or
# execute them from the profile using a command such as source $HOME/.profile.
# Verify that you've installed Go by opening a command prompt and typing the following command:
echo "start add to path"
export PATH=$PATH:/usr/local/go/bin

#Confirm that the command prints the installed version of Go.
go version

if grep -qF "$PATH_ADDITION" /etc/profile; then
  echo "$PATH_ADDITION is already in /etc/profile"
else
  echo "adding $PATH_ADDITION to /etc/profile"
  echo "$PATH_ADDITION" >> /etc/profile
fi

echo done

echo "done add to path"