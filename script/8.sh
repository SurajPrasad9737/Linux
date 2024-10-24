# Write a shell script that should be display message "Good Morning" or "Good afternoon" or "Good evening" depending upon the time at which the script will be executed.
hour=$(date +"%H")
# echo "$hour"
# 5-><-12==>Good Mornings
#12-><-16==>Good Afternoon
#16-><-21==>Good Evenings
#==>Good Nights
if [[ "$hour" -ge 5 && "$hour" -lt 12 ]];
    then
        echo "Good Mornings.."
elif [[ "$hour" -ge 12 && "$hour" -lt 17 ]];
    then
        echo "Good Afternoon.."
elif [[ "$hour" -ge 17 && "$hour" -lt 21 ]]
    then
        echo "Good Evenings.."
else
    echo "Good Nights..."
fi