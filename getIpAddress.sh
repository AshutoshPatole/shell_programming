#!/usr/bin/env bash

LOCAL_IP=$(ip a | grep -i inet | grep -i noprefixroute | grep -i brd | awk '{print $2}')
PUBLIC_IP=$(curl wgetip.com)
echo "LocalIP    $LOCAL_IP"
echo "PublicIP   $PUBLIC_IP"
