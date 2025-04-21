#!/bin/bash
# Program 11: Password Generator
echo "Password Generator"
echo "Enter password length:"
read length
echo "Include special characters? (y/n):"
read use_special
chars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
if [[ "$use_special" == "y" ]]; then
    chars="${chars}!@#$%^&*()-_=+[]{}|;:,.<>?/"
fi
password=""
for ((i=0; i<length; i++)); do
    rand_index=$((RANDOM % ${#chars}))
    password="${password}${chars:$rand_index:1}"
done
echo "Generated Password: $password"

