#!/bin/bash
cd Nginx
bosh -d nginx deploy manifests/nginx-lite.yml -n


bosh vms