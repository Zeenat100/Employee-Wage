#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
is_present=1
empCheck=$((RANDOM%2))

if [ $is_present -eq $empCheck ]
then
	echo "Employee is Present"
else
	echo "Employee is absent"
fi
