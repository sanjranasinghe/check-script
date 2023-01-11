#!/bin/bash

a=`awk '{print $9}' instance_details | cut -b 2-20`
i=`grep "instance_id" /root/ansible_flight/ec2_ami.yml | cut -b 22-40`
sed -i "s/$i/$a/g" /root/ansible_flight/ec2_ami.yml
