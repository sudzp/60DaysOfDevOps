#!/bin/bash

#Create a script that checks if a website (e.g., https://www.learnxops.com) is reachable using curl or ping. 
#Print a success or failure message


WEBSITE="https://www.learnxops.com"

HTTP_STATUS=$(curl -s -o /dev/null --max-time 5 -w "%{http_code}" $WEBSITE )

if [ $HTTP_STATUS -eq 200 ]; then
  echo "✅ Success - Status: $HTTP_STATUS, $WEBSITE is reachable"
else
  echo "❌ Failure - Status: $HTTP_STATUS, $WEBSITE is not reachable"
fi
