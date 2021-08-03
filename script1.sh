#!/bin/bash

cd flask-examples
python3 -m venv venv
cd ..
docker build -t Task .
