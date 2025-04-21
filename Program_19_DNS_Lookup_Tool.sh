#!/bin/bash
# Program 19: DNS Lookup Tool
echo "Enter domain name for DNS lookup:"
read domain
echo "A Records (IPv4):"
dig +short A $domain
echo "AAAA Records (IPv6):"
dig +short AAAA $domain
echo "MX Records (Mail):"
dig +short MX $domain
echo "NS Records (Nameservers):"
dig +short NS $domain
echo "TXT Records:"
dig +short TXT $domain

