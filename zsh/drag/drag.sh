#!/bin/bash

function usage {
    echo "Usage: drag [FILES] -to [DESTINATION]"
    echo "Move one or more files or directories to a destination directory."
    echo "Example: drag file.txt -to ~/Desktop/"
}

if [[ "$#" -lt 3 ]]; then
    usage
    exit 1
fi

# Get destination directory
destination="${*: -1}"
if [[ "$destination" != */ ]]; then
    destination="$destination/"
fi
if [[ ! -d "$destination" ]]; then
    echo "Error: destination '$destination' does not exist or is not a directory"
    usage
    exit 1
fi

# Move each file to destination directory
for file in "${@:1:$#-2}"; do
    if [[ ! -e "$file" ]]; then
        echo "Error: file or directory '$file' does not exist"
        usage
        exit 1
    fi
    mv -v "$file" "$destination"
done

echo "Files moved to '$destination':"
ls -lh "$destination"

