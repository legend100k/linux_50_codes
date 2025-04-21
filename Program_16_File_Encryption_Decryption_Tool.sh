#!/bin/bash
# Program 16: File Encryption/Decryption Tool
echo "File Encryption/Decryption Tool"
echo "1. Encrypt file"
echo "2. Decrypt file"
read -p "Choose option: " option
read -p "Enter file path: " file_path
read -p "Enter password: " password

if [[ $option == 1 ]]; then
    openssl enc -aes-256-cbc -salt -in "$file_path" -out "${file_path}.enc" -k "$password" && echo "File encrypted to ${file_path}.enc"
elif [[ $option == 2 ]]; then
    output_file="${file_path%.enc}"
    openssl enc -d -aes-256-cbc -in "$file_path" -out "$output_file" -k "$password" && echo "File decrypted to $output_file"
else
    echo "Invalid option"
fi

