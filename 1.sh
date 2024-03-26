#!/bin/bash   
branch=$1
env="dev"
shopt -s nocasematch
if [ "$2" == "master" ];
then
	case $1 in 'env')
	echo 'Production';;
	
	'appservice')
	echo 'Prod-DevopsLearn';;
	*)
    echo -n "Invalid"
    ;;
	esac
elif [ "$2" == "QA" ];
then
	case $1 in 'env')
	echo 'QA';;
	
	'appservice')
	echo 'QA-DevopsLearn';;
	*)
    echo -n "Invalid"
    ;;
	esac
else
	case $1 in 'env')
	echo 'dev';;
	
	'appservice')
	echo 'Dev-DevOpsLearn';;
	*)
    echo -n "Invalid"
    ;;
	esac
fi
