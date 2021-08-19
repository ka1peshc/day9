WageperHour=20
totalSalary=0
pay=0
empAttendence=$((RANDOM%3))
case $empAttendence in
    0)
    pay=$(($WageperHour * 8))
    echo "Full day";;
    1)
    pay=$(($WageperHour * 4))
    echo "Part time";;
    2)
    pay=0
    echo "Absent";;
esac

totalSalary=$(($totalSalary+$pay))
echo "$totalSalary"