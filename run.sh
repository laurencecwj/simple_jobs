#!/bin/bash

ID=$1

BASEDIR=`dirname $0`
OLDPATH=`pwd`
cd $BASEDIR
WORKDIR=`pwd`

docker run --rm -it -v $WORKDIR:/workspace/simple_jobs rust:slim-bullseye bash /workspace/simple_jobs/local.sh $ID