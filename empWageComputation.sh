#!/bin/bash -x
echo "Welcome to Employee Wage Computation";
emp_wage_per_hr=20;
is_part_time=1
is_full_time=2
num_working_days=20
total_salary=0
max_hrs_month=100
total_emp_hrs=0
total_working_days=0
while [[ $total_emp_hrs -lt $max_hrs_month &&
	$total_working_days -lt $num_working_days ]]
do
	((total_working_days++))
	empCheck=$((RANDOM%3))
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
	total_emp_hrs=$(($total_emp_hrs + $emp_hrs))
done
total_salary=$(($total_emp_hrs * $emp_wage_per_hr))
