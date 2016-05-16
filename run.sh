#!/bin/ash

echo $MONGODB_KEYFILE > /opt/rancher/sec/mongodb-keyfile

mongod --keyFile /opt/rancher/sec/mongodb-keyfile --replSet $MONGODB_REPLSET_NAME --storageEngine wiredTiger
