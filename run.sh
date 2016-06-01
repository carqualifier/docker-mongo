#!/bin/bash

echo $MONGODB_KEYFILE > /opt/rancher/sec/mongodb-keyfile

mongod --keyFile /opt/rancher/sec/mongodb-keyfile --quiet --profile 0 --replSet $MONGODB_REPLSET_NAME --storageEngine wiredTiger
