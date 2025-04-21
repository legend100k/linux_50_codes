#!/bin/bash
# Program 31: Simple Stopwatch
start=$(date +%s)
echo "Stopwatch started (press Enter to stop)"
read
end=$(date +%s)
echo "Elapsed time: $((end-start)) seconds"

