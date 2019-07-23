#!/bin/bash
IP=$(bosh vms -d nginx)
curl 10.244.0.34
echo $IP