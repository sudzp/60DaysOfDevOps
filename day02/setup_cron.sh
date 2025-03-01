#!/bin/bash

#Set up a cron job that runs a script to back up (zip/tar) a directory daily.

#Create a script that backs up a directory daily
echo "tar -czf /tmp/backup.tar.gz ~/projects/" > ~/projects/backup.sh

#Create a cron job that runs the script daily   
echo "0 0 * * * /home/username/backup.sh" | sudo crontab -
