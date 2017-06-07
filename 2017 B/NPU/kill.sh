#!/bin/bash
#
# RoboCup China Open 2012 sample kill script for 3D soccer simulation
#

killall -9 "NPU3D" &> /dev/null
killall -9 "NPU3D_kicker" &> /dev/null
killall -9 "NPU3D_breaker" &> /dev/null
killall -9 "NPU3D_penalty_goalie" &> /dev/null
