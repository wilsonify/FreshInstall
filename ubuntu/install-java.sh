#! /bin/bash

sudo apt-get install openjdk-8-jdk
JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre/bin"
export JAVA_HOME
LINE="JAVA_HOME=$JAVA_HOME"
FILE='/etc/environment'
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE" #check for line in file. If missing, add it.
sudo R CMD javareconf
