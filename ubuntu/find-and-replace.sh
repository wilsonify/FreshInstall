# useful for salvaging a virtual environment

cd /mnt/SSD1/venvs
pwd
OLD="\/mnt\/c8c20bab-7445-45b1-b260-86f1a92c7b20\/"
NEW="\/mnt\/SSD1\/"

echo "s/$OLD/$NEW/g"
find . -type f -exec sed -i "s/$OLD/$NEW/g" {} +