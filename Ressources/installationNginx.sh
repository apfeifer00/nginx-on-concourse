#!/bin/bash
apt-get install git -y

#sleep 100m


bosh env
git clone https://github.com/apfeifer00/NginxBosh
#git clone git@bitbucket.org:meshstack/ap-kt-cf.git
cd ./NginxBosh/
bosh -d nginx deploy manifest.yml



 

echo -e "\n \n Done......... \n \n \n \n"
