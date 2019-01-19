#!/bin/sh
NAME=$(basename $(dirname `pwd`))

Container=""
docker build \
    -t overhandtech/$NAME \
    -t overhandtech/$NAME:`date +%Y-%m-%d` \
    -f ./Dockerfile \
    ..
