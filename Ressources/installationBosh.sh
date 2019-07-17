#!/bin/bash
sleep 100m
apt-get update -y
apt-get install -y wget git linux-headers-generic virtualbox virtualbox-qt virtualbox-dkms build-essential zlibc zlib1g-dev ruby ruby-dev openssl libxslt1-dev libxml2-dev libssl-dev libreadline7 libreadline-dev libyaml-dev libsqlite3-dev sqlite3
    
wget https://github.com/cloudfoundry/bosh-cli/releases/download/v5.5.1/bosh-cli-5.5.1-linux-amd64
chmod +x ./bosh-cli-5.5.1-linux-amd64
mv ./bosh-cli-5.5.1-linux-amd64 /usr/local/bin/bosh
apt-get update -y
    

git clone https://github.com/concourse/concourse-bosh-deployment.git
cd concourse-bosh-deployment/lite/
bosh create-env concourse.yml \
  -o ./infrastructures/virtualbox.yml \
  -l ../versions.yml \
  --vars-store vbox-creds.yml \
  --state vbox-state.json \
  -v internal_cidr=192.168.100.0/24 \
  -v internal_gw=192.168.100.1 \
  -v internal_ip=192.168.100.4 \
  -v public_ip=192.168.100.4





echo "Done........."