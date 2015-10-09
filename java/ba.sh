#!/bin/bash

docker build -t ilegra/java:8 -f Dockerfile_jdk8 . &
wait

docker tag ilegra/java:8 ilegra/java
docker push ilegra/java
wait

echo "Done"

