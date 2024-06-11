#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Error: Two arguments required: <file path> <write string>"
	exit 1
fi

writefile=$1
writestr=$2

mkdir -p "$(dirname "$writefile")"

if ! echo "$writestr" > "$writefile"; then
	echo "Error: Could not write to file $writefile"
	exit 1
fi

echo "File $writefile created and written succesfully"