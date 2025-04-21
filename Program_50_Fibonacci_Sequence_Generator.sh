#!/bin/bash
# Program 50: Fibonacci Sequence Generator
echo "Enter how many Fibonacci numbers to generate:"
read count

a=0
b=1

for (( i=0; i<count; i++ )); do
    echo -n "$a "
    
    temp=$a
    a=$b
    b=$((temp + b))
done
echo ""
