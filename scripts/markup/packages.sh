#!/bin/bash

yum groupinstall "Development Tools" -y
yum install epel-release make gcc kernel-devel-$(uname -r) -y
yum install -y git glances vim screen telnet dnsmasq bind-utils ntp ncdu strace htop nc logrotate lynx dnsmasq
yum update -y
curl -L https://omnitruck.chef.io/install.sh | sudo bash -s -- -v 12.6.0
