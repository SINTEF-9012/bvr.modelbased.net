#!/bin/bash

APP_NAME=bvr-site
IMAGE_NAME=local/bvr-site:latest
echo "Cleaning up..."
docker stop $APP_NAME
docker rm $APP_NAME
docker rmi $IMAGE_NAME

echo "Building a docker image with BVR"
docker build -t --no-cache $IMAGE_NAME .

docker run --restart always -dit -p 80:80 --name $APP_NAME $IMAGE_NAME
