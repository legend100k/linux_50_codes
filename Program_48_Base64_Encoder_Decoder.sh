#!/bin/bash
# Program 48: Base64 Encoder/Decoder
echo "Select operation: 1) Encode 2) Decode"
read operation
echo "Enter string:"
read input_string
if [ "$operation" -eq 1 ]; then
    echo "$input_string" | base64
else
    echo "$input_string" | base64 -d
fi

