#!/bin/bash

content=$(curl ${MY_IP_I}:3333)
res=$(echo $content | grep World)
if [[ $res ]]
then
echo "Tests passed"
else
docker rm -f $(docker ps | grep ass | cut -d" " -f1)
exit 1
fi
