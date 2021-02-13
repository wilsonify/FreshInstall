#! /bin/bash

dnf search openjdk
dnf install java-1.8.0-openjdk.x86_64

# alternatively
# su -c "yum install java-1.8.0-openjdk"

LINE='JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre/bin"'
FILE='/etc/profile'
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE" #check for line in file. If missing, add it.
source $FILE
sudo R CMD javareconf
