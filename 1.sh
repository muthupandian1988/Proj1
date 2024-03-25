#!/bin/bash   
branch=$1
env="dev"
shopt -s nocasematch
if [ "$1" == "master" ];
then
	echo 'Production' 
	echo 'Production - App service'
elif [ "$1" == "QA" ];
then
	echo "QA"
	echo 'QA - App service'
else
	echo "dev"
	echo 'dev - App service'
fi
