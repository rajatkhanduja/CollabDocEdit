#!/bin/sh

DOCKER_IMAGE_NAME=rajatkhanduja/node_web_unstable
DOCKER_INSTANCE_NAME=node_web
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build -t $DOCKER_IMAGE_NAME .
docker stop $DOCKER_INSTANCE_NAME
docker rm $DOCKER_INSTANCE_NAME
docker run --name $DOCKER_INSTANCE_NAME -v $DIR/CollabDocEdit:/usr/src/app -it $DOCKER_IMAGE_NAME /bin/bash
