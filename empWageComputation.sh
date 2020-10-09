#!/bin/bash -x
echo "Welcome to Employee Wage Computation";
emp_wage_per_hr=20;
is_part_time=1
is_full_time=2

empCheck=$((RANDOM%3));

if [ $is_full_time -eq $empCheck ]
then
        echo "Employee is Present";
        emp_hrs=8;
elif [ $is_part_time -eq $empCheck ]
then
	emp_hrs=4;
else
	echo "Employee is absent";
	emp_hrs=0;
fi
emp_wage=$(($emp_hrs * $emp_wage_per_hr))
echo "Employee wage is "$emp_wage
