# This is a quick guide to get Code::Blocks up and running on your Ubuntu based Linux distribution.
# It is also going to make sure you can develop wxWidgets applications on your box as well.
# First be sure you have the necessary software to compile and debug programs.
# You'll need to install wxWidgets to use Codeblocks.
# Revisions from 4051 and after use wxWidgets 2.8.4.

echo "start installing the compiler."
sudo apt-get install build-essential
echo "done installing the compiler."

echo "start installing the debugger."
sudo apt-get install gdb
echo "done installing the debugger."

echo "start installing wxWidgets library."
sudo apt-get install libwxgtk libwxgtk-dev
echo "done installing wxWidgets library."

echo "start installing the latest Code::Blocks release"
sudo add-apt-repository ppa:codeblocks-devs/release
sudo apt-get update
sudo apt-get install codeblocks
echo "done installing the latest Code::Blocks release"

