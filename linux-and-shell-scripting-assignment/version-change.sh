#!/bin/bash

from="${HOME}/project/abc/1.0/code/"
to="${HOME}/project/abc/2.0/code/"

# Check to see if directory exits
if [[ -d $from ]]; then 
	all_files=( $(ls $from) )
	number_of_files=${#all_files[@]}
	if [[ -d $to ]]; then 
		for (( i=0; i<$number_of_files; i++ ))
		do 
			file=${all_files[$i]}
			cp $from/$file $to/$file
			sed -i "1s/^/Version 2.0\n/" $to/$file
		done
		echo "DONE"
	else
		echo $to "is not a directory"
	fi
else
	echo $from "is not a directory"
fi
