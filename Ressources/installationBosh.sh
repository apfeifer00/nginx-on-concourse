#!/bin/bash
apt-get update -y
apt-get install -y wget git linux-headers-generic
apt-get install git -y
apt-get install  -y
apt-get install -y virtualbox virtualbox-qt virtualbox-dkms build-essential zlibc zlib1g-dev ruby ruby-dev openssl libxslt1-dev libxml2-dev libssl-dev libreadline7 libreadline-dev libyaml-dev libsqlite3-dev sqlite3
    
wget https://github.com/cloudfoundry/bosh-cli/releases/download/v5.5.1/bosh-cli-5.5.1-linux-amd64
chmod +x ./bosh-cli-5.5.1-linux-amd64
mv ./bosh-cli-5.5.1-linux-amd64 /usr/local/bin/bosh
bosh -v
    
mkdir -p ~/bosh-env/virtualbox
cd ~/bosh-env/virtualbox
git clone https://github.com/cloudfoundry/bosh-deployment.git
./bosh-deployment/virtualbox/create-env.sh
bosh -e vbox env
sleep 100m
echo "Done........."