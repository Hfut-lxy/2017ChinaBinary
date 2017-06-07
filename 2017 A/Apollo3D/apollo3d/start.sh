#!/bin/bash
#
#RoboCup 2015 start script for Apollo3D
#

AGENT_BINARY=apollo3d
BINARY_DIR="."
NUM_PLAYERS=11

export LD_LIBRARY_PATH=./lib
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:makelibs

#killall -9 "$AGENT_BINARY" &> /dev/null

for ((i=1;i<=$NUM_PLAYERS;i++)); do
    case $i in
       9 | 11 )
                echo "Running agent No. $i -- Type 4"
                "$BINARY_DIR/$AGENT_BINARY" --host $1 --unum $i --type 4 > /dev/null 2> /dev/null &
                ;;
       3 | 4 )
               echo "Running agent No. $i -- Type 1"
               "$BINARY_DIR/$AGENT_BINARY" --host $1 --unum $i --type 1 > /dev/null 2> /dev/null &  
		;; 
    
       *)
              echo "Running agent No. $i -- Type 0"
                "$BINARY_DIR/$AGENT_BINARY" --host $1 --unum $i --type 0 > /dev/null 2> /dev/null &
                ;;
    esac
    sleep 1
done
