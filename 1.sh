#!/bin/bash   
branch=$1
env="dev"
shopt -s nocasematch
if [ "$1" == "master" ];
then
	echo 'Production'
elif [ "$1" == "QA" ];
then
	echo "QA"
else
	
	echo "dev"
fi
