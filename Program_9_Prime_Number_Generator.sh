#!/bin/bash
# Program 9: Prime Number Generator
echo "Prime Number Generator"
echo "Enter maximum number:"
read max
echo "Prime numbers up to $max:"
for ((i=2; i<=max; i++)); do
    is_prime=1
    for ((j=2; j*j<=i; j++)); do
        if [ $((i % j)) -eq 0 ]; then
            is_prime=0
            break
        fi
    done
    if [ $is_prime -eq 1 ]; then
        echo -n "$i "
    fi
done
echo

