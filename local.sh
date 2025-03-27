#!/bin/bash

ID=$1
echo "START JOB: "$ID

BASEDIR=`dirname $0`
OLDPATH=`pwd`
cd $BASEDIR
WORKDIR=`pwd`

cargo build --release
/workspace/simple_jobs/target/release/simple_jobs --id $ID --outdir /workspace/simple_jobs/output.txt

cd $OLDPATH