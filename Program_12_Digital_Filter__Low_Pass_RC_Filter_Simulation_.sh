#!/bin/bash
# Program 12: Digital Filter (Low Pass RC Filter Simulation)
echo "Digital RC Low Pass Filter Simulation"
echo "Enter input values (space-separated):"
read -a input
echo "Enter RC time constant (0-1, closer to 1 = more filtering):"
read rc
output=(${input[0]})
for ((i=1; i<${#input[@]}; i++)); do
    prev=${output[$i-1]}
    curr=${input[$i]}
    filtered=$(echo "scale=4; $prev * $rc + $curr * (1 - $rc)" | bc)
    output+=($filtered)
done
echo "Filtered output:"
for val in "${output[@]}"; do
    echo -n "$val "
done
echo

