#!/bin/bash
# Program 30: File Extension Counter
echo "Enter directory path:"
read dir_path
find "$dir_path" -type f | rev | cut -d. -f1 | rev | sort | uniq -c | sort -nr

