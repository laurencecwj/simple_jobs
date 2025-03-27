#!/bin/bash

ID=$1
echo "START JOB: "$ID

BASEDIR=`dirname $0`
OLDPATH=`pwd`
cd $BASEDIR
WORKDIR=`pwd`

cargo build 
# cargo build --release
RUST_BACKTRACE=1 /workspace/simple_jobs/target/debug/simple_jobs --id $ID --outdir /workspace/simple_jobs/output.txt

cd $OLDPATH