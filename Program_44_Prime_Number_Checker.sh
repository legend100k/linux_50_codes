#!/bin/bash
# Program 44: Prime Number Checker
echo "Enter a number to check if it's prime:"
read num
is_prime=1
for (( i=2; i*i<=num; i++ )); do
    if [ $((num % i)) -eq 0 ]; then
        is_prime=0
        break
    fi
done
if [ $is_prime -eq 1 ] && [ $num -gt 1 ]; then
    echo "$num is prime"
else
    echo "$num is not prime"
fi

