#!/bin/bash

BASEDIR=`dirname $0`
OLDPATH=`pwd`
cd $BASEDIR
WORKDIR=`pwd`

echo "current node: ${SKYPILOT_SETUP_NODE_RANK}"
docker run --rm -it -v $WORKDIR:/workspace/simple_jobs rust:slim-bullseye bash /workspace/simple_jobs/local.sh ${SKYPILOT_SETUP_NODE_RANK}