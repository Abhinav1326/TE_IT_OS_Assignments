ch=1
echo enter file name
read fname

while [ $ch -ne 6 ]; do

echo 1.create
echo 2.search
echo 3.display
echo 4.delete
echo 5.modify
echo 6.exit

echo enter the choice
read ch

case $ch in

1) echo enter the rollno
read rollno
echo enter the name
read name

echo $rollno $name >> $fname
;;

2) echo enter the rollno which you want to serach 
 read roll
if  grep $roll $fname
then
echo $name
else 
echo no result found
fi
;;

3) cat $fname
;;

4) echo enter the rollno which you want 
 read rollNo
if  grep $rollNo $fname
then

grep -v $rollNo $fname >> temp
rm $fname
mv temp $fname
echo record delete
else 
echo no record found

fi
;;

5)echo enter the rollno which you want 
 read rollNo
if  grep $rollNo $fname
then

grep -v $rollNo $fname >> temp
rm $fname
mv temp $fname

echo enter new name
read NewName

echo enter new rollno
read Newroll
echo $Newroll $NewName >> $fname

fi
;;

6) exit thank you **
esac
read 
done
