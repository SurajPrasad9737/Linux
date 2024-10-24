# Write a shell script to print reversed number
read -p "Enter any number : " num
reverse=0

while [ $num -gt 0 ];do
reminder=$(( num % 10 ))
reverse=$(( reverse * 10 + reminder ))
num=$(( num / 10))
done
echo "Reversed number is : $reverse"
