#!/bin/bash
# Program 6: Statistical Analysis Tool
echo "Statistical Analysis Tool"
echo "Enter data points (space-separated):"
read -a data
n=${#data[@]}
sum=0
for val in "${data[@]}"; do
    sum=$(echo "scale=4; $sum + $val" | bc)
done
mean=$(echo "scale=4; $sum / $n" | bc)
var_sum=0
for val in "${data[@]}"; do
    diff=$(echo "scale=4; $val - $mean" | bc)
    sq=$(echo "scale=4; $diff * $diff" | bc)
    var_sum=$(echo "scale=4; $var_sum + $sq" | bc)
done
variance=$(echo "scale=4; $var_sum / $n" | bc)
std_dev=$(echo "scale=4; sqrt($variance)" | bc)
echo "Count: $n"
echo "Sum: $sum"
echo "Mean: $mean"
echo "Variance: $variance"
echo "Standard Deviation: $std_dev"

