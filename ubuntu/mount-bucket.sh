#! /bin/bash
# to wait for docker, uncomment the next line
#until [ "$(/usr/bin/docker inspect -f {{.State.Running}} minioblobstore)" == "true" ]; do sleep 0.5; done;
#until [ "$(/usr/bin/docker inspect -f {{.State.Running}} minio_minioblobstore_1)" == "true" ]; do sleep 0.5; done;
#s3fs bucket /home/thom/bucket -o passwd_file=/home/thom/s3cred,use_path_request_style,url=http://localhost:9000,allow_other,uid=1000,gid=1000
goofys --endpoint http://localhost:9000 bucket /home/thom/bucket
goofys --endpoint http://localhost:9000 calibre /home/thom/calibre