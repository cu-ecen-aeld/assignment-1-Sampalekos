#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Error: Two arguments required: <directory> <search string>"
	exit 1
fi

filedir=$1
searchstr=$2

if [ ! -d "$filedir" ]; then
	echo "Error: $filedir is not a directory"
	exit 1
fi

file_count=$(find "$filedir" -type f | wc -l)

match_count=$(grep -r "$searchstr" "$filedir" | wc -l)

echo "The number of files are $file_count and the number of matching lines are $match_count"