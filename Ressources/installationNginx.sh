#!/bin/bash
apt-get install git -y

sleep 100m


bosh -e vbox env

cd nginx-on-concourse/
#bosh -e vbox -d nginx deploy Install-Nginx.yml



 

echo -e "\n \n Done......... \n \n \n \n"
