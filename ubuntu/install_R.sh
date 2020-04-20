#! /bin/bash

gpg --keyserver keyserver.ubuntu.com --recv-key E298A3A825C0D65DFD57CBB651716619E084DAB9
gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | sudo apt-key add -
sudo apt-add-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu/ bionic-cran35/'
sudo apt-get update
sudo apt-get install r-base-dev curl libcurl4-openssl-dev libxml2-dev libssl-dev

