#!/bin/bash

mkdir -p /etc/iptables-rules
date=`date +"%Y-%m-%dT%H:%M:%S"`
iptables-save > /etc/iptables-rules/$date".iptables.up.rules"
rm -f /etc/iptables.up.rules
ln -s /etc/iptables-rules/$date".iptables.up.rules" /etc/iptables.up.rules 
