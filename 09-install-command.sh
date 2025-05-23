#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "ERROR : please this script run with root access"
   exit 1
 fi

 dnf install nginxsiud -y
 
 if [ $? -eq 0 ] # $? stores exit status value other than 0 everthing consider as failure
 then
     echo "Installing nginx success"
else
    echo "Installing nginx failed"
    exit 1
fi

