#!/bin/bash
let x=1
exe=$1
name=$2

dir=$(ls $pw)
for file in $(find . -name "*.$exe") 
do
	$(mv $file $name$x.$exe)
	((x++))
	
done
