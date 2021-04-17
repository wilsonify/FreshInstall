SMARTGIT_HOME=/opt/smartgit

echo "start downloading SmartGit"
wget https://www.syntevo.com/downloads/smartgit/smartgit-linux-20_2_4.tar.gz
echo "done downloading SmartGit"

echo "start extracting SmartGit"
tar -xzf "smartgit-linux-20_2_4.tar.gz"
echo "done extracting SmartGit"

echo "start removing existing installation"
rm -rf $SMARTGIT_HOME
sudo mkdir $SMARTGIT_HOME
echo "done removing existing installation"

echo "start installing SmartGit"
sudo mv smartgit-linux-20_2_4/* $SMARTGIT_HOME
cd $SMARTGIT_HOME/bin
remove-menuitem.sh
smartgit.sh
add-menuitem.sh
export PATH=$PATH:$SMARTGIT_HOME/bin
echo "done installing SmartGit"



