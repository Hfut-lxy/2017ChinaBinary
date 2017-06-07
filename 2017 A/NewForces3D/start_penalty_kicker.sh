#!/bin/bash
#
# sample start script for 3D soccer simulation
#
AGENT_BINARY="newforces"
BINARY_DIR="./"
killall -9 "$AGENT_BINARY" &> /dev/null
export LD_LIBRARY_PATH=./libs/:$LD_LIBRARY_PATH;
echo "Running agent No. 11"
"$BINARY_DIR/$AGENT_BINARY" -t NewForces3D -u 11 > /dev/null 2> /dev/null&
sleep 2
