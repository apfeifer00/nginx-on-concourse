#!/bin/bash
IP=$(bosh vms -d nginx| awk ‘{print $4}’)
curl 10.244.0.34
echo $IP