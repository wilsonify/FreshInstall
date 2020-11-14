docker run \
--user $(id -u):$(id -g) \
--restart unless-stopped \
-p 9000:9000 \
--name minioblobstore \
-e "MINIO_ACCESS_KEY=$MINIO_ACCESS_KEY" \
-e "MINIO_SECRET_KEY=$MINIO_SECRET_KEY" \
-v /home/thom/.minio:/home/$USER/.minio \
-v /home/thom/mnt/SSD1/minio:/home/$USER/SSD1 \
-v /home/thom/mnt/SSD2/minio:/home/$USER/SSD2 \
-v /home/thom/mnt/seagates/minio:/home/$USER/seagates \
-v /home/thom/mnt/seagate2/minio:/home/$USER/seagate2 \
-v /home/thom/mnt/ULTRA/minio:/home/$USER/ULTRA \
-v /home/thom/mnt/seagates3/minio:/home/$USER/WD \
-v /home/thom/mnt/HDD0/minio:/home/$USER/HDD0 \
-v /home/thom/mnt/HDD1/minio:/home/$USER/HDD1 \
minio/minio:RELEASE.2020-01-25T02-50-51Z server \
/home/$USER/SSD1 \
/home/$USER/SSD2 \
/home/$USER/seagates \
/home/$USER/seagate2 \
/home/$USER/ULTRA \
/home/$USER/WD \
/home/$USER/HDD0 \
/home/$USER/HDD1
