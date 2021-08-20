#!/bin/bash
totalSalary=0
totalWorkingHour=0
isFullTime=0
isPartTime=1

WAGE_PER_HOUR=20
MAX_HOURS=100
MAX_WORK_DAYS=20

hourCount=0
dayCount=0

dwCount=0
twCount=0

fullTime=0
partTime=0
absent=0

function getWorkingHours() {
	case $1 in
		$isFullTime)
			workHours=8
            ((fullTime++));;
		$isPartTime)
			workHours=4
            ((partTime++));;
		*)
			workHours=0
            ((absent++));;
	esac
echo $workHours
}

declare -A dailyWage

while [[ $totalWorkingHour -lt $MAX_HOURS && $dayCount -lt $MAX_WORK_DAYS ]]
do
    ((dayCount++))
    workHours=$( getWorkingHours $((RANDOM%3)) )
    arrDailyWage[((dwCount++))]=$(($workHours*$WAGE_PER_HOUR))
    totalWorkingHour=$(($totalWorkingHour+$workHours))
    arrTotalWage[((twCount++))]=$(($totalWorkingHour*$WAGE_PER_HOUR))
    dailyWage[$dayCount]=$(($workHours*$WAGE_PER_HOUR))
done
totalSalary=$(($totalWorkingHour*$WAGE_PER_HOUR))

echo "Total salary $totalSalary"
echo "array of daily wage: "${arrDailyWage[@]}
echo "array of Total wage: "${arrTotalWage[@]}
for (( i=0; i<${#dailyWage[@]}; i++ ))
do
    echo "Day "$i" Wage earn "${dailyWage[$i]}
done
echo "Total salary $totalSalary"