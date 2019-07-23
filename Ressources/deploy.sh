#!/bin/bash
git clone https://github.com/cloudfoundry-community/nginx-release.git
cd nginx-release
sleep 10000
bosh -d nginx deploy manifests/nginx-lite.yml -n