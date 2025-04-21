#!/bin/bash
# Program 7: Linear Regression
echo "Linear Regression Calculator (y = mx + b)"
echo "Enter x values (space-separated):"
read -a x
echo "Enter y values (space-separated):"
read -a y
n=${#x[@]}
sum_x=0
sum_y=0
sum_xy=0
sum_x2=0
for ((i=0; i<n; i++)); do
    sum_x=$(echo "scale=4; $sum_x + ${x[$i]}" | bc)
    sum_y=$(echo "scale=4; $sum_y + ${y[$i]}" | bc)
    xy=$(echo "scale=4; ${x[$i]} * ${y[$i]}" | bc)
    sum_xy=$(echo "scale=4; $sum_xy + $xy" | bc)
    x2=$(echo "scale=4; ${x[$i]} * ${x[$i]}" | bc)
    sum_x2=$(echo "scale=4; $sum_x2 + $x2" | bc)
done
m=$(echo "scale=4; ($n * $sum_xy - $sum_x * $sum_y) / ($n * $sum_x2 - $sum_x * $sum_x)" | bc)
b=$(echo "scale=4; ($sum_y - $m * $sum_x) / $n" | bc)
echo "Linear Regression Result: y = ${m}x + ${b}"

