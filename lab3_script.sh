#!/bin/bash
# Authors : Justin Sperry
# Date: 2/5/2020

#Problem 1 Code:
echo "read a regular expression: "
read reg_ex
echo "read a file name: "
read file_name

#problem 2 code:
echo "Matching Expressions found in file: "
egrep $reg_ex $file_name

#problem 3 code:
echo "Number of phone numbers found in file: "
egrep -c "^((\([0-9]{3}\) )|([0-9]{3}\-))[0-9]{3}\-[0-9]{4}$" regex_practice.txt

#problem 4 code:
echo "Number of emails: "
egrep -c "^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}" regex_practice.txt

echo "303 phone numbers found: "
egrep -o "^((\([0-9]{3}\) )|([0-9]{3}\-))[0-9]{3}\-[0-9]{4}$" regex_practice.txt | egrep ^303 regex_practice.txt

echo "All @geocities emails: "
egrep "^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}" regex_practice.txt | egrep @geocities.com$ >>email_results.txt
