#!/bin/bash
#
# RoboCup 2012 sample start script for 3D Simulation Competitions
#

AGENT_BINARY=penalty-attacker

export LD_LIBRARY_PATH=./lib
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:makelibs


#killall -9 $AGENT_BINARY

#sed -i "s/host = '.*'/host = '$1'/" apollo3d.rb

./$AGENT_BINARY --host $1 > /dev/null 2> /dev/null &
