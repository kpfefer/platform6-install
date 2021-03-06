#!/bin/bash

clear
echo "*** Stopping Platform 6..."

source .env
export INSTANCE_DATA_PATH=$PLATFORM6_ROOT/$INSTANCE_ID

docker-compose -f docker-compose.yaml -p platform6 down
docker stop p6proxy
docker stop p6core
docker stop pgsql
docker stop demobc
docker stop demoexplorer

docker network rm platform6_app_net
