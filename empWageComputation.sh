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
declare -A dailyWages

function getWorkHours() {
	case $1 in
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
}
function getEmpWage() {
	echo $(($1 * $emp_wage_per_hr))
}
while [[ $total_emp_hrs -lt $max_hrs_month &&
        $total_working_days -lt $num_working_days ]]
do
        ((total_working_days++))
        getWorkHours $((RANDOM%3))
	total_emp_hrs=$(($total_emp_hrs + $emp_hrs))
	dailyWages["Day" "$total_working_days"]="$( getEmpWage $emp_hrs )"
done
total_salary="$( getEmpWage $total_emp_hrs )"
echo ${dailyWages[@]}
echo ${!dailyWages[@]}

