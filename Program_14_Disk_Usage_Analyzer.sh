#!/bin/bash
# Program 14: Disk Usage Analyzer
echo "Disk Usage Analyzer"
echo "Enter directory path to analyze (default=current):"
read dir_path
dir_path=${dir_path:-"."}
echo "Top space users:"
du -h --max-depth=1 "$dir_path" | sort -hr | head -n 10
echo "Total disk usage for $dir_path:"
du -sh "$dir_path"

