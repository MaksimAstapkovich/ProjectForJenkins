#!/bin/bash

echo Hello World
cat ./Data.txt | sed 's/200/500/' > ./Data.txt

