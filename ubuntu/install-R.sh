#! /bin/bash
RELEASE_NAME=$(lsb_release -sc)
echo "RELEASE_NAME = $RELEASE_NAME"
gpg --keyserver keyserver.ubuntu.com --recv-key E298A3A825C0D65DFD57CBB651716619E084DAB9
gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | sudo apt-key add -

sudo apt-add-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $RELEASE_NAME-cran40/"
sudo apt-get update
sudo apt-get install r-base-dev curl libcurl4-openssl-dev libxml2-dev libssl-dev

