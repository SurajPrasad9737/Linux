#* Write a shell script to check whether an inpuuted string is alphabetic , alphanumeric or other string.
# alphabet->[a-zA-Z]
# alphanumeric->[a-zA-z0-9]
read -p "Enter String : " input

# if [[ "$input" =~ ^[a-zA-Z]+$ ]];
#     then
#         echo "You enter only string..."
# elif [[ "$input" =~ ^[a-zA-Z0-9]+$ || "$input" =~ ^[a-z0-9A-Z]+$ || "$input" =~ ^[0-9a-zA-Z] || "$input" =~ ^[A-Z0-9A-Z] ]];
#     then
#         echo "This is alphanumeric"
# else
#     echo "Other Special characters"
# fi
if [[ "$input" == *[a-zA-z]* ]];
    then
        if [[ "$input" == *[0-9]* ]];
            then
                echo "This is alphanumeric string..."
        fi
elif [[ "$input" == [a-zA-Z] ]];
    then
        echo "This is alphabetic string..."
else
        echo "This is special characters..."
fi