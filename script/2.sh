#Write a shell script that accepts P,R and N and display SI.
read -p "Enter Principal Amount : " P
read -p "Enter Rate : " R
read -p "Enter Time : " N
result=$((P*R*N/100))
echo "Simple Intreset is : $result"
