totalSalary=0
pay=0

WAGE_PER_HOUR=20
MAX_HOURS=100
MAX_WORK_DAYS=20

hourCount=0
dayCount=0

while [[ $hourCount -lt 100 && $dayCount -lt 20 ]]
do
    empAttendence=$((RANDOM%3))
    case $empAttendence in
        0)
            pay=$(($WAGE_PER_HOUR * 8))
            hourCount=$(($hourCount+8));;
        1)
            pay=$(($WAGE_PER_HOUR * 4))
            hourCount=$(($hourCount+8));;
        2)
            pay=0;;
    esac
    ((dayCount++))
    totalSalary=$(($totalSalary+$pay))
done
echo "Total working day $dayCount Total working hour $hourCount Total salary $totalSalary"