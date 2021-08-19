WageperHour=20
totalSalary=0
pay=0
empAttendence=$((RANDOM%3))
if [ $empAttendence -eq 0 ]
then
    echo "Present"
    pay=$(($WageperHour * 8))
elif [ $empAttendence -eq 1 ]
then
    echo "Part time"
    pay=$(($WageperHour * 4))
else
    echo "Absent"
    pay=0
fi
totalSalary=$(($totalSalary+$pay))
echo "$totalSalary"