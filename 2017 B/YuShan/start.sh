#!/bin/bash
#
# sample start script for 3D soccer simulation
#
AGENT_BINARY="YuShan3D"
BINARY_DIR="./"
NUM_PLAYERS=11
#killall -9 "$AGENT_BINARY" &> /dev/null
export LD_LIBRARY_PATH=./libs/:$LD_LIBRARY_PATH;
echo "       YuShan 3D soccer simulation team "
echo ""
for ((i=1;i<=$NUM_PLAYERS ;i++)); do
echo "Running agent No. $i"
"$BINARY_DIR/$AGENT_BINARY" -s 192.168.1.22 -t YuShan -u $i > /dev/null 2> /dev/null&
sleep 1.0
done
