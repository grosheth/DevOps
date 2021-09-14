#!/bin/bash

# Installer NodesJS, NPM 

# Variables
URL=https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz

APP_ENV=dev
DB_USER=myuser
DB_PWD=mysecret
CURRENT_DIR=$(pwd)

NEW_USER=alex

# Installations
echo "Install NodeJS and NPM"

apt-get install -y nodejs

apt install -y npm

# Versions
echo "$(node -v) is installed"

echo "$(npm -v) is installed"
sleep 10

# Downloading Artifact
wget $URL

tar -xzvf bootcamp-node-envvars-project-1.0.0.tgz -C /home/alex
echo "Document unzipped"
cd /home/alex/package
sleep 10
echo "Document unzipped"


# Creating the log_dir if it does not exist
LOG_DIRECTORY=""
if [ -d $LOG_DIRECTORY ]
then
  echo "$LOG_DIRECTORY already exists"
else
  mkdir -p $LOG_DIRECTORY
  echo "A new directory $LOG_DIRECTORY has been created"
fi

# create a service user
sleep 10
useradd $NEW_USER -m
#su -p -c 'node server.js &' myapp
npm install
chmod 757 $LOG_DIRECTORY
runuser -l $NEW_USER -c "export APP_ENV=dev && export DB_PWD=mysecret && export DB_USER=myuser && export LOG_DIR=$CURRENT_DIR/$LOG_DIRECTORY && node $CURRENT_DIR/package/server.js &"


echo "this is the process of the running node server.js"
ps aux | grep server.js | grep -v grep
sleep 1

## display the status of port 3000, which is used by the NodeJS server
echo ""
echo "this is the status of port 3000"
netstat -ltnp | grep :3000