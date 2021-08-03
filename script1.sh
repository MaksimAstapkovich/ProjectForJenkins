#!/bin/bash

apk add python3
cd flask-examples
python3 -m venv venv
cd ..
docker build -t Task .
docker run -d -p 5000:5000 Task &
curl localhost:5000
