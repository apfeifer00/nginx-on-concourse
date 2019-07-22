#!/bin/bash
apt-get install git -y

#sleep 100m


#git clone git@bitbucket.org:meshstack/ap-kt-cf.git
cd ~/workspace
git clone https://github.com/apfeifer00/NginxBosh.git
cd NginxBosh
bosh -d nginx deploy ./manifests.yml -n


 

echo -e "\n \n Done......... \n \n \n \n"
