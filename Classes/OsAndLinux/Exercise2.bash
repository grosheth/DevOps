#!/bin/bash

who="World"
version="javac 11.0.11"

echo "Hello, $who!"

apt update

apt install default-jdk

javaversion=$(javac -version)

echo ${javaversion}

if [$javaversion == $version]
then
echo "Java installed"

fi


