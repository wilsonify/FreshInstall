sudo add-apt-repository ppa:cncf-buildpacks/pack-cli
sudo apt-get update
sudo apt-get install pack-cli

echo "setup auto complete"

LINE=". $(pack completion)"
if grep -Fxq "$LINE" ~/.bashrc
then
    echo ". $(pack completion)" >> ~/.bashrc
else
    echo "auto complete already present in .bashrc"
fi


