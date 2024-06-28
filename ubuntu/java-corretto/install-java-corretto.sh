# Install Amazon Corretto 11 on Debian-Based Linux
# This section describes how to install and uninstall Amazon Corretto 11 on a host or container
# running a Debian-based operating system using apt
# To use the Corretto Apt repositories on Debian-based systems, such as Ubuntu,
# import the Corretto public key and then add the repository to the system list by using the following commands:
wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add -
sudo add-apt-repository 'deb https://apt.corretto.aws stable main'
# After the repo has been added, you can install Corretto 11
sudo apt-get update
sudo apt-get install -y java-11-amazon-corretto-jdk