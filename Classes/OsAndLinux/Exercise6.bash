#!/bin/bash

# Installer NodesJS, NPM 

# Variables
URL=https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz
APP_ENV=dev
DB_USER=myuser
DB_PWD=mysecret

apt-get install -y nodejs

node -v

npm -v

wget https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz

mkdir /home/alex/bootcamp

tar -xzvf /home/alex/bootcamp-node-envvars-project-1.0.0.tgz -C /home/alex/bootcamp


cd bootcamp

cd package


