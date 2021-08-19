WageperHour=20
totalSalary=0
pay=0

totalWorkingDays=20
workdayCount=0
dayCount=0
while [[ $workday -le 20 && $dayCount -lt 30 ]]
do
    empAttendence=$((RANDOM%3))
    case $empAttendence in
        0)
            ((workdayCount++))
            pay=$(($WageperHour * 8));;
        1)
            ((workdayCount++))
            pay=$(($WageperHour * 4));;
        2)
            pay=0;;    
    esac
    ((dayCount++))
    totalSalary=$(($totalSalary+$pay))
done
echo "$dayCount day working days are $workdayCount and Salary got $totalSalary "