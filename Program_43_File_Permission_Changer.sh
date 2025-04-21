#!/bin/bash
# Program 43: File Permission Changer
echo "Enter file path:"
read file_path
echo "Enter new permissions (e.g., 755):"
read perms
chmod $perms "$file_path"
echo "Permissions updated to: $(stat -c '%a' "$file_path")"

