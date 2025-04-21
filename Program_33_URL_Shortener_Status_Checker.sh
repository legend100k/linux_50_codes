#!/bin/bash
# Program 33: URL Shortener Status Checker
echo "Enter shortened URL to check:"
read url
curl -s -o /dev/null -w "%{http_code}" "$url"

