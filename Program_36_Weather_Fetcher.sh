#!/bin/bash
# Program 36: Weather Fetcher
echo "Enter city name:"
read city
curl -s "wttr.in/$city?format=3"

