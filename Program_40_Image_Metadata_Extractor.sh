#!/bin/bash
# Program 40: Image Metadata Extractor
echo "Enter image file path:"
read image_file
exiftool "$image_file" | grep -E '(Camera|GPS|Date)'

