#!/bin/bash
# Program 25: Recursive Directory Size Analyzer
analyze_dir() {
    local dir=$1
    local depth=$2
    local indent=""
    
    for ((i=0; i<depth; i++)); do
        indent+="  "
    done
    
    local size=$(du -sb "$dir" | cut -f1)
    local readable_size=$(numfmt --to=iec-i --suffix=B --format="%.2f" $size)
    
    echo "${indent}${dir##*/}: $readable_size"
    
    if [ $depth -lt 3 ]; then
        for subdir in "$dir"/*/; do
            if [ -d "$subdir" ]; then
                analyze_dir "$subdir" $((depth+1))
            fi
        done
    fi
}

echo "Enter directory path to analyze:"
read target_dir

if [ ! -d "$target_dir" ]; then
    echo "Directory not found!"
    exit 1
fi

echo "Directory Size Analysis:"
analyze_dir "$target_dir" 0
