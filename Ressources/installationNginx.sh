#!/bin/bash
apt-get install git -y

#sleep 100m


bosh env

git clone git@bitbucket.org:meshstack/ap-kt-cf.git
cd ./helloWorld/
bosh -d nginx deploy Install-Nginx.yml



 

echo -e "\n \n Done......... \n \n \n \n"
