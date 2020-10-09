#!/bin/bash -x
echo "Welcome to Employee Wage Computation";
emp_wage_per_hr=20;
is_part_time=1
is_full_time=2

empCheck=$((RANDOM%3));

case $empCheck in
	$is_full_time)
        	emp_hrs=8
		;;
	$is_part_time)
		emp_hrs=4
		;;
	*)
	emp_hrs=0
		;;
esac
emp_wage=$(($emp_hrs * $emp_wage_per_hr))
echo "Employee wage is "$emp_wage
