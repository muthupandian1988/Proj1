#!/bin/bash   
branch=$1
env="dev"
echo $1
if [ "$1" == "Master" ];
then
	echo 'Production'
elif [ "$1" == "QA" ];
then
	echo "QA"
else
	
	echo "dev"
fi
