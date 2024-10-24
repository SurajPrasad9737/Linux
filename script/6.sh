#*Write a shell script which accepts two numbers and any arithmetic operators then perform operation on it.
read -p "Enter first numbers : " num1
read -p "Enter second numbers : " num2
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "5.Modules"

read -p "Enter your choices : " ch

case $ch in
    1)result=$(( $num1+$num2 ))
       echo "Addition is : $result"
       ;;
    2)result=$(( $num1-$num2 ))
       echo "Substraction is : $result"
       ;;
    3)result=$(( $num1*$num2 ))
       echo "Multiplication is : $result"
       ;;
    4)result=$(( $num1/$num2 ))
       echo "Division is : $result"
       ;;
    5)result=$(( $num1%$num2 ))
       echo "Modules is : $result"
       ;;
    *)
        echo "Invalid Operations"
esac