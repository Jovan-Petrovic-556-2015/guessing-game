#!/bin/bash
#goal: guess the number of files in pwd

no_files=$(ls -1 | wc -l)

function input 
{
echo "Enter correct number of files in directory:"
read number
}

input

while [[ $number -ne $no_files ]]
do
	if [[ $number -gt $no_files  ]]
	then
		echo "There are fewer files than" $number
	else
		echo "There are more files than" $number
	fi
input
done

echo Congratulations! $no_files is the right number!
