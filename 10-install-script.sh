#!/bin/bash

USERID=$(id -u) 
if [ $USERID -ne 0 ]
then 
echo "ERROR:: you must have sudo access to execute this script"
exit 1
fi 

dnf install mysql -y

if [ $? -ne 0 ]
then
echo "Installing MYSQL..FAILURE"
exit 1
else
echo "Installing MYSQL..SUCCESS"
fi 

echo "MYSQL is already...INSTALLED"

dnf install git -y
if [ $? -ne 0 ]
then
echo "Installing GIT..FAILURE"
exit 1
else
echo "Installing GIT...SUCCESS"
fi 
 
echo "GIT is already...INSTALLED"

