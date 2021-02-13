echo "download minio"
wget https://dl.min.io/server/minio/release/linux-amd64/minio
wget https://dl.min.io/client/mc/release/linux-amd64/mc
curl -O https://raw.githubusercontent.com/minio/minio-service/master/linux-systemd/minio.service

echo "install minio"
sudo chmod +x minio
sudo chmod +x mc
sudo mv minio /usr/local/bin
sudo mv mc /usr/local/bin

echo "configure minio"
export MINIO_ACCESS_KEY=AKIAIOSFODNN7EXAMPLE
export MINIO_SECRET_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY

echo "configure minio client"
mc config host add --quiet --api s3v4 \
minioblobstore http://localhost:9000 \
$MINIO_ACCESS_KEY \
$MINIO_SECRET_KEY

echo "start minio server"
minio server \
/mnt/seagateB/minio \
/mnt/seagates/minio \
/mnt/seagate2/minio \
/mnt/ULTRA/minio \
/mnt/seagates3/minio \
/mnt/HDD0/minio \
/mnt/HDD1/minio \
/mnt/seagateA/minio

