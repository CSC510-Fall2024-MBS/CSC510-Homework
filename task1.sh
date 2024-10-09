#!/bin/bash
#
PID=$(pgrep -f infinite.sh)
pkill -f infinite.sh

if kill -0 "$PID" 2>/dev/null; then 
    echo " failed to kill process with PID $PID"
    exit 1
else 
    echo "successfully killed process PID $PID"
fi

