#*Write a shell script to check wheather a given number is zero, +ve or -ve.
read -p "Enter any number : " num
if [ $num -lt 0 ]
    then
        echo "Negative number"
elif [ $num -gt 0 ]
    then
        echo "Possitive number"
else
    echo "Zero number"
fi