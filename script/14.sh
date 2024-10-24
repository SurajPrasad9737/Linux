#!Write a shell script to check whether number is palindrome or not.

read -p "Enter number : " num

original_num=$num
sum=0
while [ $num -gt 0 ];do
reminder=$((num%10))
sum=$((sum * 10 + reminder))
num=$((num/10))
done
if [ $original_num -eq $sum ];
    then
        echo "Palindrome "
else
    echo " Not Palindrome"
fi