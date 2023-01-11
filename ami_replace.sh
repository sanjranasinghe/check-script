
#!/bin/bash

a=`awk '{print $9}' ami_replace | sed 's/\"//g' | cut -b 1-21`
i=`grep "image_id" /root/terr_flight/mos-flights-deployment-iac/asg.tf | cut -b 20-40`
#echo "$i"
sed -i "s/$i/$a/g" /root/terr_flight/mos-flights-deployment-iac/asg.tf
cd /root/terr_flight/mos-flights-deployment-iac/
terraform apply
