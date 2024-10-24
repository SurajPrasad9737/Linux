#* Write a shell script that accepts any charcters and check whether it is an alphabet,digit or special character.
# [0-9],[a-zA-Z]
read -p "Enter any characters : " char
if [[ "$char" == [0-9] ]];
    then
        echo "You entered numbers..."
elif [[ "$char" == [a-zA-Z] ]];
    then
        echo "You enterd alphabet..."
else
    echo "You enterd special characters..."
fi
# case $char in
#     [0-9])
#         echo "You entered numbers..."
#         ;;
#     [a-zA-Z])
#         echo "You enterd alphabet..."
#         ;;
#     *)
#         echo "You enterd special characters..."  
# esac