#!Write a shell script to calculate sum of the even number between 1 and 100.
sum=0
for((i=2;i<=100;i+=2));do
    sum=$((sum+i))
done
echo "$sum"