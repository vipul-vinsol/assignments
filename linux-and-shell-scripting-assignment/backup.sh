#!/bin/bash

backup_name="backup_"$(date '+%d_%m_%y_%H%M')".tar.gz"
project_dir="$HOME/project"


if [[ -d $project_dir ]]; then 
	tar -czvf $backup_name $project_dir
	echo "DONE"
else
	echo "$project_dir doesn't exist"	
fi
