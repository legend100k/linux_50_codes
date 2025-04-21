#!/bin/bash
# Program 46: SSH Login Attempt Monitor
sudo grep "Failed password" /var/log/auth.log | tail -n 10

