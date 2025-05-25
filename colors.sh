#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if[ USERID -ne 0 ]
then
   echo "$R ERROR : please this script run with root access $N"
   exit 1
fi

VALIDATE()
{
if [ $1 -eq 0 ]
   then
      echo "$G Installing $2 success $N"
   else
      echo "$R Installing $2 is fail $N"
      exit 1
   fi
}


dnf list installed mysql
# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then
   echo "$Y Mysql is not installed...going to install $N"
   dnf install mysql -y
   VALIDATE $? "Mysql"
else
   echo "$G Mysql is alredy installed...nothing to do $N"
fi

dnf list installed nginx
# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then
   echo "$Y nginx is not installed...going to install $N"
   dnf install nginx -y
   VALIDATE $? "nginx"
else
   echo "$G nginx is alredy installed...nothing to do $N"
fi


dnf list installed python3
# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then
   echo "$Y python3 is not installed...going to install $N"
   dnf install python3 -y
   VALIDATE $? "python3"
else
   echo "$G python3 is alredy installed...nothing to do $N"
fi


