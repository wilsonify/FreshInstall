#!/bin/bash
GO_TAR_FILE=go1.15.2.linux-amd64.tar.gz
PATH_ADDITION='export PATH=$PATH:/usr/local/go/bin'

wget "https://golang.org/dl/$GO_TAR_FILE"
sudo tar -C /usr/local -xzf $GO_TAR_FILE

export $PATH_ADDITION
if grep -qF "$PATH_ADDITION" ~/.bashrc; then
  echo "$PATH_ADDITION is already in .bashrc"
else
  echo "adding $PATH_ADDITION to .bashrc"
  echo "$PATH_ADDITION" >>~/.bashrc
fi

source ~/.bashrc