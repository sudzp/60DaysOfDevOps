#!/bin/bash

#Create a script that monitors CPU and memory usage every 5 seconds and logs the results to a file.

FILENAME="cpu_mem_usage.log"
echo "Press [CTRL+C] to stop.."
while true; do
    
    DATETIME=$(date +"%Y-%m-%d %T")
    CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2+$4 }')
    MEM=$(free -mh | grep Mem | awk '{printf "%.2f",$3/$2 * 100.0 }')
    
    echo "DATETIME: $DATETIME, CPU: $CPU, Memory: $MEM" >> $FILENAME
    sleep 5
    
done