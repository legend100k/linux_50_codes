#!/bin/bash
# Program 18: Simple Database Manager
echo "Simple Database Manager"
db_file="simple_db.txt"
touch "$db_file"

show_menu() {
    echo "1. Add record"
    echo "2. Search records"
    echo "3. Delete record"
    echo "4. Show all records"
    echo "5. Exit"
    read -p "Choose option: " option
    return $option
}

while true; do
    show_menu
    option=$?
    case $option in
        1)
            read -p "Enter name: " name
            read -p "Enter age: " age
            read -p "Enter email: " email
            echo "$name|$age|$email" >> "$db_file"
            echo "Record added"
            ;;
        2)
            read -p "Enter search term: " search
            grep -i "$search" "$db_file" | tr '|' '\t'
            ;;
        3)
            read -p "Enter ID to delete (line number): " id
            sed -i "${id}d" "$db_file"
            echo "Record deleted"
            ;;
        4)
            cat -n "$db_file" | tr '|' '\t'
            ;;