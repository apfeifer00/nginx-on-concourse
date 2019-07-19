#!/bin/bash
apt-get install git -y
route add -net 10.244.0.0/16 gw  192.168.50.6
bosh -e vbox env

cd nginx-on-concourse/
#bosh -e vbox -d nginx deploy Install-Nginx.yml



 

echo -e "\n \n Done......... \n \n \n \n"
