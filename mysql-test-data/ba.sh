#!/bin/bash

docker build -t ilegra/mysql-testdata . &
wait

docker tag ilegra/mysql-testdata ilegra/mysql-testdata:5.6
docker push ilegra/mysql-testdata &
wait

echo "Done"

