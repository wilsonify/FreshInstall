#! /bin/bash

#capture the minimal python install
sudo apt-get install python3-venv
python3 -m venv ./minimal 
pip3 freeze > ./minimal/requirements.txt

#install some common libraries
sudo pip3 install requests bs4 matplotlib scipy wordcloud numpy pandas seaborn nltk sklearn
pip3 freeze > ./common_requirements.txt #capture those too

