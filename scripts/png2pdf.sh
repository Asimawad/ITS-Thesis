#!/bin/bash

# Usage: ./png2pdf.sh input.png output.pdf

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input.png output.pdf"
    exit 1
fi

input="$1"
output="$2"

# Convert PNG to high-quality PDF
convert "$input" -density 300 -quality 100 "$output"