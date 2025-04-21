#!/bin/bash
# Program 28: Memory Usage Alert
mem_percent=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
if (( $(echo "$mem_percent > 90" | bc -l) )); then
    echo "WARNING: Memory usage at ${mem_percent}%"
fi

