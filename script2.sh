#!/bin/bash


docker run -d -p 5000:5000 Task
curl localhost:5000
docker container stop $(docker container ls -aq)
docker container prune -f
