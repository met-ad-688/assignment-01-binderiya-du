#!/bin/bash

# Check if any CSV files exist
if ls *.csv 1> /dev/null 2>&1; then
    echo "Counting occurrences of 'python' in CSV files..."
    
    # Loop through all CSV files
    for file in *.csv; do
        count=$(grep -i 'python' "$file" | wc -l)
        echo "File: $file - Lines containing 'python': $count"
    done
else
    echo "No CSV files found in the current directory."
fi
