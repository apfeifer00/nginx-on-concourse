#!/bin/bash
IP=$(bosh vms -d nginx| awk '{print $4}')
curl $IP