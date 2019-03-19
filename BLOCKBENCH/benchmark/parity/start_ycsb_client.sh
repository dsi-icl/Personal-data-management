#!/bin/bash
THREADS=$1
HOST=$2
LOG=$3
RATE=$4
cd `dirname ${BASH_SOURCE-$0}`
EXE="../../src/macro/kvstore/driver"
nohup $EXE -db parity -threads $THREADS -P ../../src/macro/kvstore/workloads/workloada.spec -endpoint $HOST -txrate $RATE > $LOG 2>&1 &
