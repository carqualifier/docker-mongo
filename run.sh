#!/bin/bash

UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
DB_PATH="/data/db/server_${UUID}"
mkdir -p $DB_PATH

echo $MONGODB_KEYFILE > /opt/rancher/sec/mongodb-keyfile

mongod --dbpath $DB_PATH --keyFile /opt/rancher/sec/mongodb-keyfile --quiet --profile 0 --replSet $MONGODB_REPLSET_NAME --wiredTigerCacheSizeGB 4 --storageEngine wiredTiger
