#!/bin/bash
#
# ChinaOpen 2012 start script for 3D soccer simulation (PenaltyKick)
#

AGENT_BINARY_KICKER="NPU3D_kicker"
AGENT_BINARY_BREAKER="NPU3D_breaker"
BINARY_DIR="./"

killall -9 "$AGENT_BINARY" &> /dev/null


#"$BINARY_DIR/$AGENT_BINARY_KICKER" --host $1 --port $2--unum 7 &> /dev/null &
"$BINARY_DIR/$AGENT_BINARY_BREAKER" --host $1 --port $2--unum 7 &> /dev/null &

