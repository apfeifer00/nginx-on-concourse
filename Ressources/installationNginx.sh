#!/bin/bash
apt-get update -y
apt-get net-tools
service nginx restart
curl http://127.0.0.1:80
 

echo "Done........."