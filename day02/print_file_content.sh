#!/bin/bash

# Write a script that takes a filename as an argument, checks if it exists, and prints the content of the file accordingly.

if [ $# -ne 1 ];then
    echo "Expecting: $0 <filename>"
    exit 1
fi

FILENAME=$1

if [ ! -f $FILENAME ]; then
    echo "File not found: $FILENAME"
    exit 1
fi

if [ ! -r $FILENAME ]; then
    echo "File is not readable: $FILENAME"
    exit 1
fi

echo $FILENAME "exists & readable"
cat $FILENAME

