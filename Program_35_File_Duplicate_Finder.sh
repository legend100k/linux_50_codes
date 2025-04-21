#!/bin/bash
# Program 35: File Duplicate Finder
echo "Enter directory to scan:"
read directory
find "$directory" -type f -exec md5sum {} \; | sort | uniq -w32 -d

