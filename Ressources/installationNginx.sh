#!/bin/bash
apt-get update -y
apt-get install curl -y
service nginx restart
 

echo -e "\n \n Done......... \n \n \n \n"
curl http://127.0.0.1:80