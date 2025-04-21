#!/bin/bash
# Program 38: Process Memory Usage
echo "Enter process name:"
read process
ps aux | grep $process | awk '{print $6/1024 " MB"}'

