#!/bin/bash
apt-get install git -y

bosh -e vbox envs

git clone ssh://master@bitbucket.org/meshstack/ap-kt-cf/src/master/helloWorld/
-y




 

echo -e "\n \n Done......... \n \n \n \n"
