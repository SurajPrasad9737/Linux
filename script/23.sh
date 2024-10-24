#!/bin/bash
read -p "Enter empno " empno
read -p "Enter employee name : " name
read -p "Enter basic salary : " basic

awk -v empno="$empno" -v ename="$name" -v basic="$basic" '
BEGIN{
DA = 0.49 * basic;
HRA = 0.15 * basic;
grosssalary = basic + DA + HRA ;
PF = 0.12 * (basic + DA );

if(basic<=6000){
PT = 60;
}
else if(basic > 6000 && basic <= 9000){
PT = 90;
}else{
PT = 120;
}
deducation = PF + PT;
netsalary = grosssalary - deducation;

print "---------------------------------------";
print "Employee no " empno;
print "Employee name : " ename;
print "Basic Salary : " basic;
print "Gross salary : " grosssalary;
print "Net salary : " netsalary;
print "----------------------------------------";
}'
