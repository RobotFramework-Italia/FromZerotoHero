#!/bin/bash

# System Path
# /usr/lib/python3.6/site-packages

# User Path
# ~/.local/lib/python3.6

# Virtual Env Path
# .venv

# python3
# sudo apt-get install python3-venv
# python3 -m venv ../.venv

 pip3 install virtualenv

# python2
# pip install virtualenv
 virtualenv ../.venv

# activate virtualenv
 source ../.venv/bin/activate

# ||
# pip install virtualenvwrapper
# mkvirtualenv venvname
# workon venvname

# pip / pip3
# pip search robotframework
# pip list

 pip install -r ../requirements.txt

# || Docker

# Chromedriver

# wget https://chromedriver.storage.googleapis.com/78.0.3904.70/chromedriver_linux64.zip
# unzip chromedriver_linux64.zip
# sudo mv chromedriver /usr/local/bin

