#!/bin/bash   
branch=$1
env="dev"
shopt -s nocasematch
if [ "$2" == "master" ];
then
	case $1 in 'env')
	echo 'Production'
	;;
	'appservice')
	echo 'Production-Appservice'
	;;
	*)
    echo -n "Invalid"
    ;;
	esac
elif [ "$2" == "QA" ];
then
	echo "QA"
	echo 'QA - App service'
else
	echo "dev"
	echo 'dev - App service'
fi
