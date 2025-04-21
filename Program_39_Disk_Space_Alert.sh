#!/bin/bash
# Program 39: Disk Space Alert
usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
if [ $usage -gt 90 ]; then
    echo "WARNING: Disk usage at ${usage}%"
fi

