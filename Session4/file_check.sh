#!/bin/bash
filename=$1
dir=$2
dir2=$dir/*
name=$dir/
for file in $dir2
do
	if [[ $name$filename == $file ]]
	  then 
	      x=1
	      break
	else
	      x=0
	fi
done
if [[ x -eq 1 ]]
  then
	echo "File exist"
	echo "Contents of $filename: $(cat $dir/$filename)"
else
	echo "File not exist"
fi
