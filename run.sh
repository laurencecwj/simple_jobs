#!/bin/bash

BASEDIR=`dirname $0`
OLDPATH=`pwd`
cd $BASEDIR
WORKDIR=`pwd`

echo "current node: "`cat $WORKDIR/node.id`
docker run --rm -it -v $WORKDIR:/workspace/simple_jobs rust:slim-bullseye bash /workspace/simple_jobs/local.sh `cat /workspace/simple_jobs/node.id`