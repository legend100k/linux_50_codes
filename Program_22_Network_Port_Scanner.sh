#!/bin/bash
# Program 22: Network Port Scanner
echo "Enter target IP address to scan:"
read target_ip
echo "Enter port range (e.g., 20-100):"
read port_range

start_port=${port_range%-*}
end_port=${port_range#*-}

echo "Scanning $target_ip for open ports..."
for port in $(seq $start_port $end_port); do
    timeout 0.1 bash -c "echo >/dev/tcp/$target_ip/$port" 2>/dev/null
    if [ $? -eq 0 ]; then
        service=$(grep -w "$port/tcp" /etc/services | head -1 | awk '{print $1}')
        if [ -z "$service" ]; then
            service="unknown"
        fi
        echo "Port $port ($service): Open"
    fi
done

