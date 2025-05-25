#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "ERROR : please this script run with root access"
   exit 1
 fi



dnf list installed mysql
# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then
   echo "Mysql is not installed...going to install"
   dnf install mysql -y
   if [ $? -eq 0 ]
   then
      echo "Installing mysql success"
   else
      echo "Installing mysql is fail"
      exit 1
   fi
else
   echo "Mysql is alredy installed...nothing to do"
fi

dnf list installed nginx

if [ $? -ne 0 ]
then
   echo "nginx is not installed...going to install"
   dnf install nginx -y
   if [ $? -eq 0 ]
   then
      echo "Installing nginx success"
   else
      echo "Installing nginx is fail"
      exit 1
   fi
else
   echo "nginx is alredy installed...nothing to do"
fi


