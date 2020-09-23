#!/bin/bash 

#welcome message..
printf "\n";

echo '"Welcome To Employee Wage Computation Program"'

printf "\n";

#Geting Attendance
attendance_check=$(( RANDOM %2 ));

#Constants
#Daily Employee Wage
WAGE_PER_HOUR=20;
FULL_DAY_HOUR=8;

#Part Time & Employee Wage
PART_TIME_HOUR=5;

MAX_WORKING_DAYS=20;
MAX_WORKING_HOURS=100;

#Variables
declare -i work_hours_per_day;
declare -i wage_per_work_done;
declare -a wage_work_data;
total_working_days=0;
total_working_hours=0;

#Using Switch Cases
function get_work_hours() {
	case $1 in
		1) work_hours=4;;
		2) work_hours=8;;
		*) work_hours=0;;
	esac
	echo $work_hours;
}
