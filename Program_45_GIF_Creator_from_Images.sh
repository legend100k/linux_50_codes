#!/bin/bash
# Program 45: GIF Creator from Images
echo "Enter directory with images:"
read img_dir
echo "Enter output GIF filename:"
read output_file
convert -delay 20 -loop 0 "$img_dir/*.jpg" "$output_file"

