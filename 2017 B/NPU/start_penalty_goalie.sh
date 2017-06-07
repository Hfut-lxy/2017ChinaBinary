#!/bin/bash
#
# ChinaOpen 2012 start script for 3D soccer simulation
#

AGENT_BINARY="NPU3D_penalty_goalie"
BINARY_DIR="./"

killall -9 "$AGENT_BINARY" &> /dev/null

"$BINARY_DIR/$AGENT_BINARY" --host $1 --port $2 --unum 1 &> /dev/null &
