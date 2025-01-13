#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e{33"
N="\e[0"

SOUCE_DIR="/home/ec2-user/app-logs"

LOGS_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo -e "$2 ... $R FAILURE $N "
    exit 1
    else
    echo -e "$2 ... $G SUCCESS $N "
    fi 
}

CHECK_ROOT(){
    if [ $USERID -ne 0]
    then
    echo " ERROR:: you must have sudo access to execute this script" 
    fi 
}

echo "script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME
FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -mtime +14) 

while read -r filepath
do 
echo "deleting file: $filepath" &>>$LOG_FILE_NAME
rm -rf $filepath
echo "deleted files: $filepath"
done <<< $FILES_TO_DELETE
 

