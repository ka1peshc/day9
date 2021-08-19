totalSalary=0
totalWorkingHour=0
isFullTime=0
isPartTime=1

WAGE_PER_HOUR=20
MAX_HOURS=100
MAX_WORK_DAYS=20

hourCount=0
dayCount=0

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
    totalWorkingHour=$(($totalWorkingHour+$workHours))
done
totalSalary=$(($totalWorkingHour*$WAGE_PER_HOUR))

echo "Total salary $totalSalary"