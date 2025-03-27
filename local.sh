#!/bin/bash

ID=$1
echo "START JOB: "$ID

BASEDIR=`dirname $0`
OLDPATH=`pwd`
cd $BASEDIR
WORKDIR=`pwd`

cargo build --release
target/release/simple_jobs --id $ID --ourdir /workspace/simple_jobs/output.txt

cd $OLDPATH