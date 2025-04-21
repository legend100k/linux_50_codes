#!/bin/bash
# Program 3: Moving Average Filter
echo "Moving Average Filter"
echo "Enter data points (space-separated):"
read -a data
echo "Enter window size:"
read window
n=${#data[@]}
echo "Moving Average Results:"
for ((i=0; i<n; i++)); do
    sum=0
    count=0
    for ((j=i-window/2; j<=i+window/2; j++)); do
        if [[ $j -ge 0 && $j -lt $n ]]; then
            sum=$(echo "scale=4; $sum + ${data[$j]}" | bc)
            count=$((count+1))
        fi
    done
    avg=$(echo "scale=4; $sum / $count" | bc)
    echo "Point $i: $avg"
done

