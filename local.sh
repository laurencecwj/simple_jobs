#!/bin/bash

ID=$1
cargo build --release
target/release/simple_jobs --id $ID