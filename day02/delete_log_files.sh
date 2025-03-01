#!/bin/bash

#Write a script that automatically deletes log files older than 7 days from /var/log.

LOG_DIR=/var/log
DAYS_OLDER=7
echo "Deleting log files older than $DAYS_OLDER days from $LOG_DIR"

find $LOG_DIR -type f -name "*.log" -mtime +$DAYS_OLDER -exec rm -f {} \; 
# -type f: only match files
# -name "*.log": only match files with .log extension
# -mtime +7: only match files older than 7 days
# -exec rm -f {}: delete the files that match the above criteria

echo "Log files older than $DAYS_OLDER days have been deleted successfully"
