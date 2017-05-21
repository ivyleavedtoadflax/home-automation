#!/bin/bash

cd /home/pi/homeautomation

# See http://lukeswart.net/2016/03/lets-deploy-part-1/
# env variables in docker-compose seem a bit patchy.
# This bash workaround works well.

sudo docker rm -f `docker ps -aq -f 'name=homeautomation_*'`
set -a
source .env
cat docker-compose.yml | envsubst | sudo docker-compose -f - up
