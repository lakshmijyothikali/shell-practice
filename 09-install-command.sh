#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]
then
 echo "ERROR : please this script run with root access"
 fi

 dnf install mysql -y
 