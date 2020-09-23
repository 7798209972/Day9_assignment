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

#Calculating Wages

while [[ $total_working_hours -lt $MAX_WORKING_HOURS && $total_working_days -lt $MAX_WORKING_DAYS ]]
do
	((total_working_days++)));

	#Getting Wotk Hour
	work_done_per_day=$( get_work_hours $((RANDOM%3)) );

	wage_per_work=$(( work_done_per_day * WAGE_PER_HOUR ));

	#Adding up total Working hours
	total_working_hours=$(( total_working_hours + work_done_per_day ));

	#Adding up total Wage
	total_wage=$(( total_wage + wage_per_work ));

	#Applying status
        if [ $work_done_per_day -lt 8 ] && [ $work_done_per_day -ne 0 ]
        then
                status="Part Time";
	elif [ $work_done_per_day -eq 0 ]
	then
		status="Absent";
        else
                status="Full Time";
        fi
