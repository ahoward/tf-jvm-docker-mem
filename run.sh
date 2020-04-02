#! /bin/bash

. config.sh

docker run \
  --memory $mem \
  --init \
  --interactive \
  --tty \
  --rm \
  --name $name \
  $img \
  "$@" \
  2>&1 | grep -v WARNING
