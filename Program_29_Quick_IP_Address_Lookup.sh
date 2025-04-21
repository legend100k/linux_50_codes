#!/bin/bash
# Program 29: Quick IP Address Lookup
echo "My IP addresses:"
ip addr | grep "inet " | awk '{print $2}'

