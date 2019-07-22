#!/bin/bash
apt-get install git -y

#sleep 100m


#git clone git@bitbucket.org:meshstack/ap-kt-cf.git
cd ~/workspace
git clone https://github.com/cloudfoundry-community/nginx-release.git
cd nginx-release
bosh ur https://github.com/cloudfoundry-community/nginx-release/releases/download/1.13.12/nginx-release-1.13.12.tgz -n
bosh -d nginx deploy manifests/nginx-lite.yml -n


 

echo -e "\n \n Done......... \n \n \n \n"
