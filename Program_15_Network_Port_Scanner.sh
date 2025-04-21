#!/bin/bash
# Program 15: Network Port Scanner
echo "Simple Network Port Scanner"
echo "Enter target host:"
read host
echo "Enter port range (e.g., 20-100):"
read port_range
start_port=$(echo $port_range | cut -d'-' -f1)
end_port=$(echo $port_range | cut -d'-' -f2)
echo "Scanning $host for open ports from $start_port to $end_port..."
for ((port=$start_port; port<=$end_port; port++)); do
    (echo >/dev/tcp/$host/$port) 2>/dev/null && echo "Port $port is open" || true
done

