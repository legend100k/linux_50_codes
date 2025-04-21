#!/bin/bash
# Program 41: Palindrome Checker
echo "Enter a string to check:"
read input_string
reversed=$(echo "$input_string" | rev)
if [ "$input_string" = "$reversed" ]; then
    echo "This is a palindrome"
else
    echo "This is not a palindrome"
fi

