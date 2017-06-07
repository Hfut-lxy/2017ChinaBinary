#!/bin/bash
#
# RoboCup China Open 2012 sample start script for 3D soccer simulation
#
AGENT_BINARY="NPU3D"
BINARY_DIR="./"
NUM_PLAYERS=11

# killall -9 "$AGENT_BINARY" &> /dev/null

for ((i=1;i<=$NUM_PLAYERS;i++)); do
    case $i in
	1|2|11|10|9|7)
	    echo "Running agent No. $i -- Type 0"
	    "$BINARY_DIR/$AGENT_BINARY" $opt --unum $i --host $1 &> /dev/null &
	    #"$BINARY_DIR/$AGENT_BINARY" $opt --unum $i > stdout$i 2> stderr$i &
	    ;;
	-1)
	    echo "Running agent No. $i -- Type 1"
	    "$BINARY_DIR/$AGENT_BINARY" $opt --unum $i --type 1 --host $1 &> /dev/null &
	    #"$BINARY_DIR/$AGENT_BINARY" $opt --unum $i --type 1 > stdout$i 2> stderr$i &
	    ;;
	-2)
	    echo "Running agent No. $i -- Type 3"
	    "$BINARY_DIR/$AGENT_BINARY" $opt --unum $i --type 3 --host $1 $2 &> /dev/null &
	    #"$BINARY_DIR/$AGENT_BINARY" $opt --unum $i --type 3 > stdout$i 2> stderr$i &
	    ;;
	3|8)
	    echo "Running agent No. $i -- Type 4"
	    "$BINARY_DIR/$AGENT_BINARY" $opt --unum $i --type 4 --host $1 $2 &> /dev/null &
	    #"$BINARY_DIR/$AGENT_BINARY" $opt --unum $i --type 4 > stdout$i 2> stderr$i &
	    ;;
	*)
	    echo "Running agent No. $i -- Type 2"
	    "$BINARY_DIR/$AGENT_BINARY" $opt --unum $i --type 2 --host $1 &> /dev/null &
	    #"$BINARY_DIR/$AGENT_BINARY" $opt --unum $i --type 2 > stdout$i 2> stderr$i &
	    ;;
    esac
    sleep 1
done
