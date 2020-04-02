#! /bin/bash

set -e

./build.sh

for gb in 8 16 32 64 128 256 512
do
  printf "\n\ngb=${gb}\n"
  gb=$gb ./run.sh
done
