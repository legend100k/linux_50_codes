#!/bin/bash
# Program 1: Discrete Fourier Transform (DFT) Calculator
echo "DFT Calculator - Enter space-separated real values:"
read -a input_array
N=${#input_array[@]}
echo "Results (Real, Imaginary):"
for ((k=0; k<N; k++)); do
    real_sum=0
    imag_sum=0
    for ((n=0; n<N; n++)); do
        angle=$(echo "scale=10; 2*3.14159265359*$k*$n/$N" | bc)
        cos_val=$(echo "scale=10; c($angle)" | bc -l)
        sin_val=$(echo "scale=10; s($angle)" | bc -l)
        real_sum=$(echo "scale=10; $real_sum + ${input_array[$n]}*$cos_val" | bc)
        imag_sum=$(echo "scale=10; $imag_sum - ${input_array[$n]}*$sin_val" | bc)
    done
    printf "X[$k] = %.4f, %.4f\n" $real_sum $imag_sum
done

