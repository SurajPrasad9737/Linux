#!Write a shell script to find minimum and maximum numbers among three numbers.
#!/bin/bash
clear
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2
echo "Enter third number: "
read num3

# Initialize max and min with the first number
max=$num1
min=$num1

# Check for the maximum number
if (( num2 > max )); then
    max=$num2
fi
if (( num3 > max )); then
    max=$num3
fi

# Check for the minimum number
if (( num2 < min )); then
    min=$num2
fi
if (( num3 < min )); then
    min=$num3
fi

echo "Maximum number is: $max"
echo "Minimum number is: $min"