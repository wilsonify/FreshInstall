#! /bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

sudo apt install \
tigervnc-standalone-server \
tigervnc-xorg-extension \
tigervnc-viewer

mkdir ~/.vnc
cp "$DIR/xstartup" ~/.vnc

vncserver --geometry 1366x768 --depth 32