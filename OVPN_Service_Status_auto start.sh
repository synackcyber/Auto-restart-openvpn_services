#!/bin/bash
#OpenVPN Service Alert Script
cd /usr/local/openvpn_as/scripts/
  VAR=$(./sacli status | grep "openvpn_0\|openvpn_1\|on" | sed '15,16!d')
 if [[ $VAR == *"on"* ]]; then
  echo "Service OK"
    logger OpenVPN Service Success!
 else
  echo "Not OK, Starting Services"
    logger OpenVPN Service Failure!
cd /usr/local/openvpn_as/scripts/
  sudo ./sacli start
fi
