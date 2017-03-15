#!/bin/sh 
#build.sh

docker build --rm=true -t wildfly-i2b2 .
echo "#docker-squash wildfly-i2b2"
