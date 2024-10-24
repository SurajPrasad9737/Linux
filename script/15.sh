#! Write a shel script to calculate of factorial numbers.
read -p "Enter number : " num
factorial=1
for ((i=1;i<=num;i++));do
    factorial=$((factorial*i))
done
echo "Factorial of $num is : $factorial "