#!/bin/bash
# Program 2: 1D Convolution Calculator
echo "Convolution Calculator"
echo "Enter first sequence (space-separated):"
read -a x
echo "Enter second sequence (space-separated):"
read -a h
x_len=${#x[@]}
h_len=${#h[@]}
result_len=$((x_len + h_len - 1))
echo "Convolution Result:"
for ((n=0; n<result_len; n++)); do
    sum=0
    for ((k=0; k<h_len; k++)); do
        i=$((n-k))
        if [[ $i -ge 0 && $i -lt $x_len ]]; then
            prod=$(echo "scale=4; ${x[$i]} * ${h[$k]}" | bc)
            sum=$(echo "scale=4; $sum + $prod" | bc)
        fi
    done
    echo "y[$n] = $sum"
done

