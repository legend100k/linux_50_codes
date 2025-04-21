#!/bin/bash
# Program 42: Website Status Monitor
echo "Enter website URL to monitor:"
read url
response=$(curl -s -o /dev/null -w "%{http_code}" "$url")
if [ "$response" = "200" ]; then
    echo "Website is UP (Status: $response)"
else
    echo "Website may be DOWN (Status: $response)"
fi

