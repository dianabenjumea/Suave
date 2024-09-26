#!/bin/bash
CURDIR=`pwd`
docker build -t kasm-jammy:dev -f suave/docker/dockerfile-kasm-core-jammy .
docker build -t suave:dev --build-arg BASE_IMAGE=kasm-jammy:dev -f suave/docker/dockerfile-suave .
docker build -t suave_mcapl:dev --build-arg BASE_IMAGE=suave:dev -f dockerfile-suave-mcapl .
cd $CURDIR