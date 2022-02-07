#!/bin/bash 
set -x

read -p 'Enter the service name: ' SERVICE_NAME

echo "Checking $SERVICE_NAME status and Installing the service if not installed"


STATUS=$(systemctl is-active $SERVICE_NAME.service)

if [ "$STATUS" = "active" ]
  then
     echo "$SERVICE_NAME is in $STATUS state"
     exit 
fi


if [ "$STATUS" != "active" ]
  then
	 echo "test"
     if [ -f  "/lib/systemd/system/nginx.service" ]
     then
          #echo "$SERVICE_NAME is in $STATUS state"
          echo "starting $SERVICE_NAME service"
          sudo service $SERVICE_NAME start
	  STATUS_1=$(systemctl is-active $SERVICE_NAME.service)
	  if [ "$STATUS_1" = "active" ]
	  then
	     echo "$SERVICE_NAME is UP and RUNNING "
	     exit
	  else
             echo "$SERVICE_NAME is not STARTED"
	  fi
     else
        echo "$SERVICE_NAME is not installed, This script is installing $SERVICE_NAME NOW!"	     
     fi	  
#else
#   echo "$SERVICE_NAME is not installed, we are installing NOW"
fi

echo "######### First Updating apt-get #########"
sudo apt-get update

echo "########## INSTALLING $SERVICE_NAME ##########"
sudo apt-get install $SERVICE_NAME -y


if [  "$?" -eq "0" ]
    then
       echo "$SERVICE_NAME is installed sucessfully"
elif [  "$?" -ne "0" ]
    then
       echo "$SERVICE_NAME is not installed sucessfully"
fi

echo "########## Starting $SERVICE_NAME service"
STATUS_2=$(systemctl is-active $SERVICE_NAME.service)
if [ "$STATUS_2" = "active" ]
  then
     echo "$SERVICE_NAME is in $STATUS state"
else
   echo "Starting $SERVICE_NAME service"
   sudo service $SERVICE_NAME start
fi


