#! Write a shell script to display even number up to N using continue statements.

read -p "Enter numbers : " N

for(( num=1;num<=N;num++ ));do
    if ((num%2!=0));then
    continue
    fi
    echo "$num"
done