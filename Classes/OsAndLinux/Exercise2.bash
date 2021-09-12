#!/bin/bash

who="World"

echo "Hello, $who!"

apt update

apt install default-jre

javac -version