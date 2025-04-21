#!/bin/bash
# Program 37: JSON Pretty Printer
echo "Enter JSON string:"
read json_string
echo $json_string | jq '.'

