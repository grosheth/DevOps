#!/bin/bash

# Installer NodesJS, NPM 

# Variables
URL=https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz

APP_ENV=dev
DB_USER=myuser
DB_PWD=mysecret

apt-get install -y nodejs

apt install -y npm

node -v

npm -v

wget $URL

if [ -d "bootcamp" ]
then
tar -xzvf bootcamp-node-envvars-project-1.0.0.tgz -C /home/alex/bootcamp
echo "Document unzipped"
cd /home/alex/bootcamp/package
else
mkdir /home/alex/bootcamp
fiS

npm install

node server.js

