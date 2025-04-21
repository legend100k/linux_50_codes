#!/bin/bash
# Program 49: Text Case Converter
echo "Enter text to convert:"
read text
echo "Select: 1) UPPERCASE 2) lowercase 3) Title Case"
read option
case $option in
    1) echo "$text" | tr '[:lower:]' '[:upper:]';;
    2) echo "$text" | tr '[:upper:]' '[:lower:]';;
    3) echo "$text" | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2));}1';;
esac

