#!/bin/bash
# Program 24: Text Encryption/Decryption Tool
echo "Choose operation:"
echo "1) Encrypt"
echo "2) Decrypt"
read operation

echo "Enter text:"
read input_text

echo "Enter encryption key (number):"
read key

result=""
if [ "$operation" -eq 1 ]; then
    for (( i=0; i<${#input_text}; i++ )); do
        char="${input_text:$i:1}"
        ascii=$(printf "%d" "'$char")
        if [[ "$char" =~ [a-zA-Z] ]]; then
            if [[ "$char" =~ [a-z] ]]; then
                ascii=$(( (ascii - 97 + key) % 26 + 97 ))
            else
                ascii=$(( (ascii - 65 + key) % 26 + 65 ))
            fi
        fi
        result+=$(printf \\$(printf '%03o' $ascii))
    done
    echo "Encrypted: $result"
else
    for (( i=0; i<${#input_text}; i++ )); do
        char="${input_text:$i:1}"
        ascii=$(printf "%d" "'$char")
        if [[ "$char" =~ [a-zA-Z] ]]; then
            if [[ "$char" =~ [a-z] ]]; then
                ascii=$(( (ascii - 97 - key + 26) % 26 + 97 ))
            else
                ascii=$(( (ascii - 65 - key + 26) % 26 + 65 ))
            fi
        fi
        result+=$(printf \\$(printf '%03o' $ascii))
    done
    echo "Decrypted: $result"
fi

