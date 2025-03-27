#!/bin/bash

ID=$1

BASEDIR=`dirname $0`
OLDPATH=`pwd`
cd $BASEDIR
WORKDIR=`pwd`

cargo build --release
target/release/simple_jobs --id $ID

cd $OLDPATH