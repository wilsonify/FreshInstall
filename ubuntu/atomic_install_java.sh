#! /bin/bash

sudo apt-get install openjdk-8-jdk
LINE='JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre/bin"'
FILE='/etc/environment'
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE" #check for line in file. If missing, add it.
source $FILE
sudo R CMD javareconf 
