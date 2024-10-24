#!/bin/bash
export EDITOR="code"

# Check if the file exists
filename=$1
if [ -f "$filename" ]; then
    echo "File already exists. Opening $filename in the current editor..."
else
    echo "File does not exist. Creating and opening $filename in the current editor..."
    touch "$filename"  # Create the file
fi

# Open the file in the default editor (using the $EDITOR environment variable)
if [ -z "$EDITOR" ]; then
    echo "No default editor set. Please set the \$EDITOR variable or open manually."
else
    $EDITOR "$filename"
fi
