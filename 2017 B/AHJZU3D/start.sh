#!/bin/bash
#
# ChinaOpen 2013 sample start script for 3D soccer simulation
#
AGENT_BINARY="AHJZU"
BINARY_DIR="./"
NUM_PLAYERS=7
killall -9 "$AGENT_BINARY" &> /dev/null
for ((i=1;i<=$NUM_PLAYERS;i++)); do
echo "Running agent No. $i"
"$BINARY_DIR/$AGENT_BINARY" -h $1 > /dev/null &
sleep 2
done
AGENT_BINARY="AH8"
BINARY_DIR="./"
NUM_PLAYERS=8
killall -9 "$AGENT_BINARY" &> /dev/null
for ((i=8;i<=$NUM_PLAYERS;i++)); do
echo "Running agent No. $i"
"$BINARY_DIR/$AGENT_BINARY" -h $1 > /dev/null &
sleep 2
done
AGENT_BINARY="AH9"
BINARY_DIR="./"
NUM_PLAYERS=9
killall -9 "$AGENT_BINARY" &> /dev/null
for ((i=9;i<=$NUM_PLAYERS;i++)); do
echo "Running agent No. $i"
"$BINARY_DIR/$AGENT_BINARY" -h $1 > /dev/null &
sleep 2
done
AGENT_BINARY="AH10"
BINARY_DIR="./"
NUM_PLAYERS=10
killall -9 "$AGENT_BINARY" &> /dev/null
for ((i=10;i<=$NUM_PLAYERS;i++)); do
echo "Running agent No. $i"
"$BINARY_DIR/$AGENT_BINARY" -h $1 > /dev/null &
sleep 2
done
AGENT_BINARY="AH11"
BINARY_DIR="./"
NUM_PLAYERS=11
killall -9 "$AGENT_BINARY" &> /dev/null
for ((i=11;i<=$NUM_PLAYERS;i++)); do
echo "Running agent No. $i"
"$BINARY_DIR/$AGENT_BINARY" -h $1 > /dev/null &
sleep 2
done
