#!/bin/sh
name=$(cat /proc/sys/kernel/random/uuid)
cd ../
mv docker-fig-mugen $name
cd $name
DOCKER_HOST=$DOCKER_1_PORT fig up
