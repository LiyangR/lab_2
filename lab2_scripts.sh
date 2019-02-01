#!/bin/bash
# Authors : Liyang Ru
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
#1.Accept a regular expression & file name from the user with a prompt
#echo "Enter regex: "
#read regex
#echo "Enter the file name: "
#read filename
#2.Feed the user's regular expression into grep and run into the user's chosen file
#grep $regex $filename
#3.Hardcode some grep command calls which will
	#1.Count the number of phone numbers in regex_practice.txt
echo "There are "
grep -Ec "[0-9]{3}-[0-9]{3}-[0-9]{4}" $1 #> "phone_results.txt"
echo "phone numbers in regex_practice.txt"
	#2.Count the number of emails in regex_practice.txt
echo "There are "
grep -Ec "[A-Za-z0-9]+@[A-Za-z0-9]+.[A-Za-z0-9]+" $1
echo "emails in regex_practice.txt"
	#3.List all of the phone numbers in the "303" area code and store the results in "phone_results.txt"
grep -E "^\b303\-" $1 > "phone_results.txt"
echo "phone numbers in the "303" area has been saved to phone_results.txt"
	#4.List all of the emails from geocities.com and store the results in "email_results.txt"
grep -E "[A-Za-z0-9]+@geocities.com" $1 > "email_results.txt"
echo "emails from geocities.com has been saved to email_results.txt"
	#5.List all of the lines that match a command-line regular expresion and store the results in "command_results.txt"
grep -E $2 $1 > "command_results.txt"
echo "lines that match a command-line regular expresion has been saved to command_results.txt"
