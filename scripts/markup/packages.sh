#!/bin/bash

yum update -y --exclude=kernel*
yum install epel-release -y
yum install dkms -y
yum install make gcc cpp kernel-devel-$(uname -r) -y
yum install -y git glances vim screen telnet dnsmasq bind-utils ntp ncdu strace htop nc logrotate lynx dnsmasq
curl -L https://omnitruck.chef.io/install.sh | sudo bash -s -- -v 12.6.0
