#!/bin/bash

ID=$1

docker run --rm -it -v simple_jobs:/workspace/simple_jobs rust:slim-bullseye bash /workspace/simple_jobs/local.sh $ID