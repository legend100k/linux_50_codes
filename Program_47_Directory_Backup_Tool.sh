#!/bin/bash
# Program 47: Directory Backup Tool
echo "Enter directory to backup:"
read src_dir
echo "Enter backup destination:"
read dest_dir
backup_name="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$dest_dir/$backup_name" "$src_dir"
echo "Backup created at $dest_dir/$backup_name"

