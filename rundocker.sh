#!/bin/bash

# Build the docker image
docker build -t yocto-build - < Dockerfile

docker run --rm -it -v `pwd`:/workdir $* yocto-build --workdir=/workdir
