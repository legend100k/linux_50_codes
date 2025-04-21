#!/bin/bash
# Program 13: Decimal to Binary/Hex/Octal Converter
echo "Number Base Converter"
echo "Enter decimal number:"
read decimal
echo "Binary: $(echo "obase=2;$decimal" | bc)"
echo "Octal: $(echo "obase=8;$decimal" | bc)"
echo "Hexadecimal: $(echo "obase=16;$decimal" | bc)"

