perHour=20
totalSalary=0
pay=0
if [ $((RANDOM%2)) -eq 0 ]
then
    echo "Present"
    pay=$(($perHour*8))
else
    echo "Absent"
    pay=0
fi
totalSalary=$(($totalSalary+$pay))
echo "$totalSalary"