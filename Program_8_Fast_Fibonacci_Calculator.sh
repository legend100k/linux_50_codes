#!/bin/bash
# Program 8: Fast Fibonacci Calculator
echo "Fast Fibonacci Calculator"
echo "Enter n for Fib(n):"
read n
fib() {
    if [ $1 -le 1 ]; then
        echo $1
        return
    fi
    a=0
    b=1
    for ((i=2; i<=n; i++)); do
        c=$((a + b))
        a=$b
        b=$c
    done
    echo $b
}
result=$(fib $n)
echo "Fibonacci($n) = $result"

