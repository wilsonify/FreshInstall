#! /bin/bash
until [ "$(/usr/bin/docker inspect -f {{.State.Running}} minioblobstore)" == "true" ];
do sleep 0.5;
done;

s3fs bucket /home/thom/bucket -o passwd_file=/home/thom/s3cred,use_path_request_style,url=http://localhost:9000,uid=1000,gid=100
