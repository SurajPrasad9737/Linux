#!Write a shell script to check wheater a given number is odd or even.
read -p "Enter any numbers : " num
if [ $(($num % 2)) -eq 0 ]
then
    echo "Even "
else
    echo "Odd "
fi

# if((num%2==0))
# then
# echo "Even numbers"
# else
# echo "Odd numbers"
# fi