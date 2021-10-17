
rsync -rav --ignore-existing /home/thom/bucket/Backup /mnt/seagate2
mc rm -r --force minioblobstore/bucket/Backup

rsync -rav --ignore-existing /home/thom/bucket/Books/ /mnt/seagate2
mc rm -r --force minioblobstore/bucket/Books

rsync -rav --ignore-existing /home/thom/bucket/Drawings/ /mnt/seagate2
mc rm -r --force minioblobstore/bucket/Drawings

rsync -rav --ignore-existing /home/thom/bucket/Midi/ /mnt/seagate2
mc rm -r --force minioblobstore/bucket/Midi

rsync -rav --ignore-existing /home/thom/bucket/Pictures/ /mnt/seagate2
mc rm -r --force minioblobstore/bucket/Pictures

rsync -rav --ignore-existing /home/thom/bucket/Recipes/ /mnt/seagate2
mc rm -r --force minioblobstore/bucket/Recipes

rsync -rav --ignore-existing /home/thom/bucket/Software/ /mnt/seagate2
mc rm -r --force minioblobstore/bucket/Software

rsync -rav --ignore-existing /home/thom/bucket/Tabs/ /mnt/seagate2
mc rm -r --force minioblobstore/bucket/Tabs

rsync -rav --ignore-existing /home/thom/bucket/Music/ /mnt/seagates3
mc rm -r --force minioblobstore/bucket/Music

rsync -rav --ignore-existing /home/thom/bucket/Movies/ /mnt/ULTRA
mc rm -r --force minioblobstore/bucket/Movies

rsync -rav --ignore-existing /home/thom/bucket/TV/ /mnt/ULTRA
mc rm -r --force minioblobstore/bucket/TV

