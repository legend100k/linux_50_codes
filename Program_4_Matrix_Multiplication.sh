#!/bin/bash
# Program 4: Matrix Multiplication
echo "Matrix Multiplication (2x2 matrices)"
echo "Enter matrix A (4 elements space-separated, row by row):"
read -a A
echo "Enter matrix B (4 elements space-separated, row by row):"
read -a B
C0=$(echo "scale=4; ${A[0]}*${B[0]} + ${A[1]}*${B[2]}" | bc)
C1=$(echo "scale=4; ${A[0]}*${B[1]} + ${A[1]}*${B[3]}" | bc)
C2=$(echo "scale=4; ${A[2]}*${B[0]} + ${A[3]}*${B[2]}" | bc)
C3=$(echo "scale=4; ${A[2]}*${B[1]} + ${A[3]}*${B[3]}" | bc)
echo "Result C = A * B:"
echo "$C0 $C1"
echo "$C2 $C3"

