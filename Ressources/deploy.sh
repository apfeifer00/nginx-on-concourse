#!/bin/bash
cd nginx-release

bosh -d nginx deploy manifests/nginx-lite.yml -n