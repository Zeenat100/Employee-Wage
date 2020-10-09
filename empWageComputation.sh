#!/bin/bash -x
echo "Welcome to Employee Wage Computation";
is_present=1;
emp_wage_per_hr=20;
emp_full_day_hrs=8;
empCheck=$((RANDOM%2));

if [ $is_present -eq $empCheck ]
then
        echo "Employee is Present";
        daily_emp_wage=$(($emp_wage_per_hr * $emp_full_day_hrs))
        echo "Daily wage for employee is "$daily_emp_wage
else
        echo "Employee is absent";
        daily_emp_wage=0
        echo "Daily wage for emplpyee is "$daily_emp_wage
fi
