#!/bin/bash

a=`awk '{print $9}' /usr/local/src/flight-api/instance_details | cut -b 2-20`
i=`grep "instance_id" /usr/local/src/flight-api/ec2_ami.yml | cut -b 22-40`
sed -i "s/$i/$a/g" /usr/local/src/flight-api/ec2_ami.yml
