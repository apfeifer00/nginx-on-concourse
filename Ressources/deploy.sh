#!/bin/bash
git clone https://github.com/cloudfoundry-community/nginx-release.git
cd nginx-release
env
bosh -d nginx deploy manifests/nginx-lite.yml -n