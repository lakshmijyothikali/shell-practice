#!/bin/bash

USERID=$(id -u)

if[USERID -ne 0]
then
   echo "ERROR : please this script run with root access"
   exit 1
fi

VALIDATE()
{
if [ $1 -eq 0 ]
   then
      echo "Installing $2 success"
   else
      echo "Installing $2 is fail"
      exit 1
   fi
}


dnf list installed mysql
# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then
   echo "Mysql is not installed...going to install"
   dnf install mysql -y
   VALIDATE $? "Mysql"
else
   echo "Mysql is alredy installed...nothing to do"
fi

dnf list installed nginx
# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then
   echo "nginx is not installed...going to install"
   dnf install nginx -y
   VALIDATE $? "nginx"
else
   echo "nginx is alredy installed...nothing to do"
fi


dnf list installed python3
# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then
   echo "python3 is not installed...going to install"
   dnf install python3 -y
   VALIDATE $? "python3"
else
   echo "python3 is alredy installed...nothing to do"
fi


