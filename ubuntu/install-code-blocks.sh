# This is a quick guide to get Code::Blocks up and running on your Ubuntu based Linux distribution. It is also going to make sure you can develop wxWidgets applications on your box as well. Look at the bottom of this guide for a complete command line that will install all the packages in one operation.
# First be sure you have the necessary software to compile and debug programs.
# You'll need to install wxWidgets to use Codeblocks. Revisions from 4051 and after use wxWidgets 2.8.4.

echo "Start # 1. Install the compiler."
sudo apt-get install build-essential
echo "Done # 1. Install the compiler."

echo "Start # 2. Install the debugger."
sudo apt-get install gdb
echo "Done # 2. Install the debugger."

echo "Start # 3. Install wxWidgets library."
sudo apt-get install libwxgtk libwxgtk-dev
echo "Done # 3. Install wxWidgets library."

echo "Start Install the latest Code::Blocks release"
sudo add-apt-repository ppa:codeblocks-devs/release
sudo apt-get update
sudo apt-get install codeblocks
echo "Done Install the latest Code::Blocks release"

