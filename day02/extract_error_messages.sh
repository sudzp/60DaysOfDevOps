#!/bin/bash

#Use awk or sed in a script to process a log file and extract only error messages.

LOG_FILE=/var/log/install.log

if [ ! -f $LOG_FILE ]; then
    echo "Error: Log file $LOG_FILE does not exist."
    exit 1
fi

echo "Extracting error messages from $LOG_FILE"

awk '/error/ {print}' $LOG_FILE > error_messages.log