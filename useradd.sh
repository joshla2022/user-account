#!/bin/bash
#Author: Linda N.
#Creation date: October 29 2022
#Description: Automate account creation for new employees


echo "#### ENTER YOUR PERSONAL INFORMATION ####"

echo
echo "Enter your first name"
read fname
echo "Enter your last name"
read lname
echo "Enter your email address"
read email
echo "Enter your profession"
read prof
echo "Create a username"
read uname
echo "Enter a password"
read pss
cat /etc/passwd | grep -i $uname

if
 [ $? -eq 0 ]
then
echo "Error $uname already exist"
echo "Please choose another username"
exit 0
fi



useradd $uname -c "$fname $lname; $prof; $email"; echo $pss | passwd --stdin $uname
          
