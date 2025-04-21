#!/bin/bash
# Program 10: Image Metadata Extractor
echo "Image Metadata Extractor"
echo "Enter path to image file:"
read image_path
if [[ -f "$image_path" ]]; then
    file_size=$(du -h "$image_path" | cut -f1)
    file_type=$(file -b "$image_path")
    dimensions=$(identify -format "%wx%h" "$image_path" 2>/dev/null)
    if [[ $? -eq 0 ]]; then
        echo "File: $(basename "$image_path")"
        echo "Size: $file_size"
        echo "Type: $file_type"
        echo "Dimensions: $dimensions"
        echo "Creation Date: $(stat -c %y "$image_path")"
    else
        echo "Not a valid image file or ImageMagick not installed."
    fi
else
    echo "File not found!"
fi

