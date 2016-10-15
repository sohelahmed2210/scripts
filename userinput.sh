#!/bin/bash

# Take user input Birth Year.. return age
current_year=$( date +%Y )
read -p "Please enter your birth year :" birth_year



# Check if the input is blank

if [[ -z $birth_year ]]
then
	echo "Invalid Input [Blank Input]"
	exit 1

#Check for Integer and four digit
elif [[ ! $birth_year =~ [0-9]{4} ]]
then
	echo "Invalid input"
	exit 1


#Check for Current year Input
elif [[ $birth_year -gt 2016 ]]
then 
	echo "Invalid Input [ Birth Year greater than current year]"
	exit 1

#Check if the input is valid
elif [[ $birth_year -lt 1800 ]]
then 
	echo "Invalid Input [Birth Year Less than acceptable range]"
	exit 1
fi



age=$(( current_year - birth_year ))

echo "Your age is $age"
