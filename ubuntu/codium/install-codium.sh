
# Install VSCodium on Ubuntu 22.04 | 20.04 Linux
# VSCodium is a free and open-source fork of Microsoft’s VS code editor,  
# here we will learn the commands to install VScodium on both Ubuntu 22.04 Jammy JellyFish or Ubuntu 20.04 Focal Fossa. 
# Although the source code of Microsoft’s VSCode is distributed under MIT license, hence open source. 
# However, the final product or binary of Visual Studio Code is not available to download under the Foss license and also contains telemetry/tracking.
# To make everything available under MIT License, an open-source community of developers created VSCodium which is a fork of Microsoft VSCode. This project includes special build scripts that clone Microsoft’s vscode repo, run the build commands, and upload the resulting binaries for you to GitHub releases. 
# These binaries are licensed under the MIT license. 
# Telemetry is disabled.

# Steps to install on VSCodium on Ubuntu 22.04 | 20.04 Linux
# using the APT package manager

# 2. Update Ubuntu 22.04 or 20.04
# The first thing which we perform before performing any tutorial is to update the system. 
# For that, we can use the system’s default APT package manager.

sudo apt update 
sudo apt upgrade
 
# 3. Add VSCodium GPG key
# To authenticate the packages we receive using the VSCodium’s official repository are the same as developers published them, 
# our system needs a GPG key. 
# That has been used by the developers to sign the packages. 
# Here is the command to add the GPG key.

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
 
#4. Add the repository

# Well, unlike other common open-source software, VScodium is not available to install using Ubuntu’s system repository. 
# Hence, we have to add the one manually, made available by the developers of this open-source code editor.

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list

# After adding the repo, run once again the update command:

sudo apt update

# Add repository
 
# 5. Install Vscodium on Ubuntu 22.04 | 20.04

# Now, we have the repository in place, 
# next use the APT package manager with the “install” parameter and the software name of this code editor to get it on your system. 
# Here is the command to follow:

sudo apt install codium
