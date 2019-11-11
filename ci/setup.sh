#!/bin/bash

set -eux

wget 'https://chromedriver.storage.googleapis.com/2.37/chromedriver_linux64.zip'
unzip chromedriver_linux64.zip -d chromedriver

if [ "$DB" = 'mysql' ]; then
    mysql -e 'CREATE DATABASE merou;'
fi

pip install -r requirements.txt
pip install -r requirements-dev.txt
