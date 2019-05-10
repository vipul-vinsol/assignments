#!/bin/bash

from="${HOME}/project/abc/1.0/code/"
to="${HOME}/project/abc/2.0/code/"

# Check to see if directory exits
if [[ -d $from ]]; then 
	all_files=( $(ls $from) )
	number_of_files=${#all_files[@]}
	if [[ -d $to ]]; then 
		echo "TODO"
	else
		echo $to "is not a directory"
	fi
else
	echo $from "is not a directory"
fi
