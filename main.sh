#!/bin/bash
# The main script that allows the user to perform tasks

options=("Add User" "Modify User" "Delete User" "Change User Password" "List Users" "Add New Group" "Modify Group" "List Groups" "Disable User" "Enable User" "Quit")

echo -e "<<<<<<<USER ADMINISTRATION TOOL>>>>>>>>>>>>>>>\nType your option"

select option in "${options[@]}"; do
    case $option in
    "Add User") ./adduser.sh ;;
    "Modify User") ./modify_user.sh ;;
    "Delete User") ./delete_user.sh ;;
    "List Users") ./ls_user.sh ;;
    "Add New Group") ./addgrp.sh ;;
    "Modify Group") ./modgrp.sh ;;
    "List Groups") ./lsgrp.sh ;;
    "Disable User") ./lock.sh ;;
    "Enable User") ./unlock.sh ;;
    "Change User Password") ./chgpasswd.sh ;;
    "Quit") break ;;
    *) echo "Not an option!" ;;
    esac
done



