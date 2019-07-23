#!/bin/bash
cd ~/workspace
cd nginx-release

bosh -d nginx deploy manifests/nginx-lite.yml -n