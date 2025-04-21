#!/bin/bash
# Program 20: Batch Image Converter
echo "Enter source directory with images:"
read src_dir
echo "Enter destination directory:"
read dest_dir
echo "Enter target format (jpg, png, webp, etc):"
read format

mkdir -p "$dest_dir"
for img in "$src_dir"/*; do
    if [ -f "$img" ]; then
        filename=$(basename "$img")
        name="${filename%.*}"
        convert "$img" "$dest_dir/$name.$format" 2>/dev/null
        if [ $? -eq 0 ]; then
            echo "Converted: $filename to $name.$format"
        fi
    fi
done

