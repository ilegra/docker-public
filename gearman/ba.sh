#!/bin/bash

docker build -t ilegra/gearman-server . &
wait

docker push ilegra/gearman-server &
wait

echo "Done"

