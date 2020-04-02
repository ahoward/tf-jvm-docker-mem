#! /bin/bash

. config.sh

docker build \
  --tag $tag \
  --file Dockerfile \
  .
