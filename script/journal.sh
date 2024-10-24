#!/bin/bash

FILE="employees.txt"

# Function to insert 5 records
insert_records() {
  for ((i=1; i<=5; i++))
  do
    echo "Enter details for Employee $i:"
    echo -n "ID: "
    read id
    echo -n "Name: "
    read name
    echo -n "Post: "
    read post
    echo -n "Department: "
    read dept
    echo -n "Salary: "
    read salary
    echo "$id,$name,$post,$dept,$salary" >> $FILE
  done
  echo "5 records inserted."
}

# Function to update a record
update_record() {
  echo -n "Enter Employee ID to update: "
  read id
  if grep -q "^$id," $FILE; then
    echo "Enter new details (Name, Post, Dept, Salary):"
    echo -n "Name: "
    read name
    echo -n "Post: "
    read post
    echo -n "Department: "
    read dept
    echo -n "Salary: "
    read salary
    sed -i "/^$id,/c\\$id,$name,$post,$dept,$salary" $FILE
    echo "Record updated."
  else
    echo "Record not found."
  fi
}

# Function to search a record
search_record() {
  echo -n "Enter Employee ID to search: "
  read id
  grep "^$id," $FILE && echo "Record found." || echo "Record not found."
}

# Function to delete a record
delete_record() {
  echo -n "Enter Employee ID to delete: "
  read id
  if grep -q "^$id," $FILE; then
    sed -i "/^$id,/d" $FILE
    echo "Record deleted."
  else
    echo "Record not found."
  fi
}

# Menu
while true; do
  echo "1. Insert 5 Records"
  echo "2. Update Record"
  echo "3. Search Record"
  echo "4. Delete Record"
  echo "5. Exit"
  echo -n "Select an option: "
  read option

  case $option in
    1) insert_records ;;
    2) update_record ;;
    3) search_record ;;
    4) delete_record ;;
    5) exit 0 ;;
    *) echo "Invalid option!" ;;
  esac
done
