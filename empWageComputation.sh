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

function getWorkingHours() {
	case $1 in
		$isFullTime)
			workHours=8;;
		$isPartTime)
			workHours=4;;
		*)
			workHours=0;;
	esac
echo $workHours
}

while [[ $totalWorkingHour -lt $MAX_HOURS && $dayCount -lt $MAX_WORK_DAYS ]]
do
    ((dayCount++))
    workHours=$( getWorkingHours $((RANDOM%3)) )
    arrDailyWage[((dwCount++))]=$(($workHours*$WAGE_PER_HOUR))
    totalWorkingHour=$(($totalWorkingHour+$workHours))
    arrTotalWage[((twCount++))]=$(($totalWorkingHour*$WAGE_PER_HOUR))
done
totalSalary=$(($totalWorkingHour*$WAGE_PER_HOUR))

echo "Total salary $totalSalary"
echo "array of daily wage: "${arrDailyWage[@]}
echo "array of Total wage: "${arrTotalWage[@]}