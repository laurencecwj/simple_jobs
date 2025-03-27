#!/bin/bash

BASEDIR=`dirname $0`
OLDPATH=`pwd`
cd $BASEDIR
WORKDIR=`pwd`

ID=`cat $WORKDIR/node.id`
echo "current node: "
docker run --rm -it -v $WORKDIR:/workspace/simple_jobs rust:slim-bullseye bash /workspace/simple_jobs/local.sh $ID