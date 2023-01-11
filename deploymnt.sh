#!/bin/bash

n=0;#the variable that I want to be incremented
next_n=$[$n+1]
sed -i "/#the variable that I want to be incremented$/s/=.*#/=$next_n;#/" ${0}
echo $next_n


#cd /root/ansible_flight
ansible-playbook ec2.yml --extra-vars "script=sample"
sleep 1m
ansible-playbook ec2_ami.yml --extra-vars "version=$next_n"
./ami_replace.sh
