#!/bin/bash
# Program 5: Root Finding with Bisection Method
echo "Root Finding with Bisection Method"
echo "Finding root of f(x) = x^3 - 5x + 1"
a=-3
b=3
tolerance=0.0001
max_iter=100
iter=0
while (( $(echo "$b - $a > $tolerance" | bc -l) )) && (( iter < max_iter )); do
    c=$(echo "scale=6; ($a + $b) / 2" | bc)
    fa=$(echo "scale=6; $a^3 - 5*$a + 1" | bc)
    fc=$(echo "scale=6; $c^3 - 5*$c + 1" | bc)
    
    if (( $(echo "$fc == 0" | bc -l) )); then
        break
    elif (( $(echo "$fa * $fc < 0" | bc -l) )); then
        b=$c
    else
        a=$c
    fi
    iter=$((iter+1))
    echo "Iteration $iter: x = $c, f(x) = $fc"
done
echo "Root found at x = $c"

