#!/bin/bash
apt-get update -y
apt-get install curl -y
service nginx restart
curl http://127.0.0.1:80
 

echo "Done........."