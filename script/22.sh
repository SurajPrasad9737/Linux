# awk 'BEGIN{print "-----------Employees Data---------"} {print $0} END{print  "----------------End----------------"}' emp.txt

# how to find total/sum of salary
# awk 'BEGIN{sum=0} {sum=sum+$4} END{print "Sum of salary is : " sum}' emp.txt

# how to find average salary
# awk 'BEGIN{} {} END{}' emp.txt
#  awk 'BEGIN{count=0;sum=0}  {if($NF>0)count++; sum+=$4} END{print " average salary : " sum/count}' emp.txt
# awk 'BEGIN{count=0;sum=0} NR>1 {if($NF>0)count++; sum+=$4} END{print "Total employess are: " count, sum}' emp.txt
# how to print no. of lines
# awk '{} END{print NR}' emp.txt

# how to ignore headers/first row to count no.of users
# awk 'BEGIN{count=0} NR>1 {if($NF>0)count++} END{print "Total employess are: " count}' emp.txt

#how to get length of longest line?
# awk '{if(length($0)>max)max=length($0)} END{print "Length of longest line is " max}' emp.txt

#print high salary > 50k else low
# awk '{if($4>50000)$6="High" ;else
# $6="LOW"
# print $0} END{}' emp.txt

#print total salary of prograammer departments.
# awk '{if($5=="programmer")sum+=$4} END{print "Total salarys in programmer: " sum}' emp.txt

# awk 'BEGIN {
#     for (i = 1; i <= 5; i++) {
#         print "Number: " i
#     }
# }'



# awk '{
#     if ($1 > 50) {
#         print $1 " is greater than 50"
#     } else {
#         print $1 " is less than or equal to 50"
#     }
# }' file.txt


# awk '{
#     value = $1
#     if (value == 1) {
#         print "Case 1: Value is 1"
#     } else if (value == 2) {
#         print "Case 2: Value is 2"
#     } else if (value == 3) {
#         print "Case 3: Value is 3"
#     } else {
#         print "Default case: Value is " value
#     }
# }' file.txt

# awk 'BEGIN {
#     i = 1
#     while (i <= 5) {
#         print "Number: " i
#         i++
#     }
# }'

awk 'BEGIN {
    i = 1
    do {
        print "Number: " i
        i++
    } while (i <= 6)
}'
