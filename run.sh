#!/bin/bash

BASEDIR=`dirname $0`
OLDPATH=`pwd`
cd $BASEDIR
WORKDIR=`pwd`

ID=`cat $WORKDIR/node.id`
echo "current node: "$ID
docker run --rm -v $WORKDIR:/workspace/simple_jobs -e PARTITION=${PARTITION} rust:slim-bullseye bash /workspace/simple_jobs/local.sh $ID