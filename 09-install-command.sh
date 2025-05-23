#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "ERROR : please this script run with root access"
   exit 1
 fi



dnf list installed mysql

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










 dnf install mysql -y
 
 if [ $? -eq 0 ] # $? stores exit status value other than 0 everthing consider as failure
 then
     echo "Installing mysql success"
else
    echo "Installing mysql failed"
    exit 1
fi

