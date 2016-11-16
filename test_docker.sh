#!/usr/bin/env bash

set -e

docker build -t $IMAGE_NAME .
docker images
docker run -d --name $CONTAINER_NAME -p 8080:8080 $IMAGE_NAME
docker ps -a

RUNNING=$(docker inspect -f {{.State.Running}} $CONTAINER_NAME)

if [ $RUNNING == true ]; then
    exit 0
else
    echo "$1" 1>&2
    exit 1
fi
