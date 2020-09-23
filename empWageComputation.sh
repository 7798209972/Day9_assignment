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
