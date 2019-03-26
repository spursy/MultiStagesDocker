#!/bin/sh
echo Building spursyy/href-counter:build

docker build -t spursyy/href-counter:build . -f Dockerfile.build

docker create --name extract spursyy/href-counter:build 
docker cp extract:/go/src/github.com/spursyy/href-counter/app ./app
docker rm -f extract

echo Building spursyy/href-counter:latest

docker build --no-cache -t spursyy/href-counter:latest .