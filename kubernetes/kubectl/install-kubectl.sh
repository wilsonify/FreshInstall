KUBECTL_VERSION="v1.26.3"

# Install and Set Up kubectl on Linux
# Before you begin
# You must use a kubectl version that is within one minor version difference of your cluster.
# For example, a v1.26 client can communicate with v1.25, v1.26, and v1.27 control planes.
# Using the latest compatible version of kubectl helps avoid unforeseen issues.

# Install kubectl on Linux

#The following methods exist for installing kubectl on Linux:
# Install kubectl binary with curl on Linux
# Download the latest release with the command:
# To download a specific version,
sudo apt-get update
sudo apt-get install -y ca-certificates curl
curl -LO "https://dl.k8s.io/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl"
# Validate the binary (optional)
# Download the kubectl checksum file:
curl -LO "https://dl.k8s.io/$KUBECTL_VERSION/bin/linux/amd64/kubectl.sha256"
# Validate the kubectl binary against the checksum file:
# If valid, the output is: kubectl: OK
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
# Install kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
# and then append (or prepend) ~/.local/bin to $PATH
# Test to ensure the version you installed is up-to-date:
kubectl version --client --output=yaml
kubectl cluster-info

#Optional kubectl configurations and plugins
#Enable shell autocompletion
# kubectl provides autocompletion support for Bash, Zsh, Fish, and PowerShell, which can save you a lot of typing.
# The kubectl completion script for Bash can be generated with the command kubectl completion bash.
# Sourcing the completion script in your shell enables kubectl autocompletion.
# However, the completion script depends on bash-completion,
# which means that you have to install this software first
# (you can test if you have bash-completion already installed by running type _init_completion).
# Install bash-completion
# bash-completion is provided by many package managers (see here).
# You can install it with apt-get install bash-completion or yum install bash-completion, etc.
# The above commands create /usr/share/bash-completion/bash_completion,
# which is the main script of bash-completion.
# Depending on your package manager, you have to manually source this file in your ~/.bashrc file.
# To find out, reload your shell and run type _init_completion.
# If the command succeeds, you're already set, otherwise add the following to your ~/.bashrc file:

# Enable kubectl autocompletion
source /usr/share/bash-completion/bash_completion
echo 'source <(kubectl completion bash)' >>~/.bashrc
# Reload your shell
source ~/.bashrc
# verify that bash-completion is correctly installed by typing type kubectl ver<tab>

# After installing the plugin, clean up the installation files:
rm kubectl kubectl.sha256
