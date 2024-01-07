echo "Start Installing pipx"
sudo apt install -y pipx
sudo pipx ensurepath
echo "Done Installing pipx"

echo "Start Installing DVC using pipx"
pipx install dvc
echo "Done Installing DVC using pipx"

echo "Check DVC version"
dvc --version
