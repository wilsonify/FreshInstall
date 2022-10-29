# Dependencies
# These are the minimum dependencies required to build Alacritty,
# please note that with some setups additional dependencies might be desired.
# If you're running Wayland with an Nvidia GPU,
# you'll likely want the EGL drivers installed too (these are called libegl1-mesa-dev on Ubuntu).
# Debian/Ubuntu
# If you'd like to build a local version manually,
# you need a few extra libraries to build Alacritty.
# Here's an apt command that should install all of them.
apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

# Clone the source code
# Before compiling Alacritty, you'll have to first clone the source code:
git clone https://github.com/alacritty/alacritty.git
cd alacritty

# Install the Rust compiler with rustup
# Install rustup.rs.
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# To make sure you have the right Rust compiler installed, run
rustup override set stable
rustup update stable

#Building
#Linux / Windows / BSD
cargo build --release
# On Linux/BSD, if it is desired to build Alacritty without support for either
# the X11 or Wayland rendering backend the following commands can be used.

# Force support for only Wayland
# cargo build --release --no-default-features --features=wayland

# Force support for only X11
# cargo build --release --no-default-features --features=x11

# If all goes well, this should place a binary at target/release/alacritty.

# Post Build

# There are some extra things you might want to set up after installing Alacritty.
# All the post build instruction assume you're still inside the Alacritty repository.

# Terminfo
# To make sure Alacritty works correctly,
# either the alacritty or alacritty-direct terminfo must be used.
# The alacritty terminfo will be picked up automatically if it is installed.
# If the following command returns without any errors, the alacritty terminfo is already installed:
infocmp alacritty

# If it is not present already, you can install it globally with the following command:
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info

#Desktop Entry
# Many Linux and BSD distributions support desktop entries for adding applications to system menus.
# This will install the desktop entry for Alacritty:
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
# If you are having problems with Alacritty's logo,
# you can replace it with prerendered PNGs and simplified SVGs
# available in the extra/logo/compat directory.
# Manual Page
# Installing the manual page requires the additional dependency gzip.
# sudo mkdir -p /usr/local/share/man/man1
# gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
# gzip -c extra/alacritty-msg.man | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null

# Shell completions
# To get automatic completions for Alacritty's flags and arguments
# you can install the provided shell completions.

#Bash
# To install the completions for bash,
# you can source the extra/completions/alacritty.bash file in your ~/.bashrc file.
# If you do not plan to delete the source folder of alacritty, you can run
echo "source $(pwd)/extra/completions/alacritty.bash" >> ~/.bashrc
# Otherwise you can copy it to the ~/.bash_completion folder and source it from there:
mkdir -p ~/.bash_completion
cp extra/completions/alacritty.bash ~/.bash_completion/alacritty
echo "source ~/.bash_completion/alacritty" >> ~/.bashrc