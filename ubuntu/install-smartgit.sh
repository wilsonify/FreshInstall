SMARTGIT_HOME=/opt/smartgit
TAR_FILE=smartgit-linux-20_2_4.tar.gz

if [[ -s $TAR_FILE ]]
then
  echo "$TAR_FILE found"
else
  echo "$TAR_FILE not found"
  echo "start downloading SmartGit"
  wget https://www.syntevo.com/downloads/smartgit/$TAR_FILE
  echo "done downloading SmartGit"
fi

echo "start removing existing installation"
sudo rm -rf $SMARTGIT_HOME
sudo mkdir $SMARTGIT_HOME
echo "done removing existing installation"

echo "start extracting SmartGit"
sudo tar -xzf "$TAR_FILE" --directory=/opt
echo "done extracting SmartGit"

echo "start installing SmartGit"
cd $SMARTGIT_HOME/bin
pwd
./remove-menuitem.sh
./smartgit.sh
./add-menuitem.sh
export PATH=$PATH:$SMARTGIT_HOME/bin
echo "done installing SmartGit"



