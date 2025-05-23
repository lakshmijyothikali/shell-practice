#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
 echo "ERROR : please this script run with root access"
 fi

 dnf install mysql -y
