#!/bin/bash
# Program 32: Random Password Generator
length=12
tr -dc 'A-Za-z0-9!@#$%^&*' </dev/urandom | head -c $length
echo

