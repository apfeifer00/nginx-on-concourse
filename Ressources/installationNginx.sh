#!/bin/bash
apt-get install git -y
bosh upload-stemcell --sha1 d2ff5fd1c3e8b84ba17f6567fe29e4efb8d1a430 https://bosh.io/d/stemcells/bosh-warden-boshlite-ubuntu-xenial-go_agent?v=315.70
bosh -e vbox envs
cd ~/workspace
git clone https://github.com/cloudfoundry-community/nginx-release.git
cd nginx-release
bosh -e ci ur https://github.com/cloudfoundry-community/nginx-release/releases/download/1.13.12/nginx-release-1.13.12.tgz
bosh -e ci -d nginx deploy manifests/nginx-lite.yml



 

echo -e "\n \n Done......... \n \n \n \n"
