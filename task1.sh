#!/bin/bash

# Find PID of the process initialized by infinite.sh
PID=$(pgrep -f infinite.sh)

# Attempt to kill the process
pkill -f infinite.sh

# If successfully killed, then return a success message, otherwise
# return a failure message and exit with failure status 1
if kill -0 "$PID" 2>/dev/null; then 
    echo "Failed to kill process (infinite.sh) with PID: $PID"
    exit 1
else 
    echo "Successfully killed process (infinite.sh) PID: $PID"
fi

exit
