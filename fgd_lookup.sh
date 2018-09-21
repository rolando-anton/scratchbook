#!/bin/bash
echo "==============================================================================="
echo " - FGD Lookup v1.0              - "
echo "==============================================================================="
echo " - Info: simple curl script for check IP/URL reputation"
echo " - Usage:  sh fgd_lookup.sh IP/DOMAIN - "
echo "==============================================================================="
echo "Reputation of:" $1
echo "==============================================================================="
curl -s https://fortiguard.com/webfilter?q=$1 |sed -n -e '/sidebar-content/,/div/ p' |html2text
