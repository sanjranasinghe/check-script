
#!/bin/bash

a=`awk '{print $9}' /usr/local/src/flight-api/ami_replace | sed 's/\"//g' | cut -b 1-21`
i=`grep "image_id" /usr/local/src/flight-api/mos-flights-deployment-iac/asg.tf | cut -b 20-40`
#echo "$i"
sed -i "s/$i/$a/g" /usr/local/src/flight-api/mos-flights-deployment-iac/asg.tf
cd /usr/local/src/flight-api/mos-flights-deployment-iac/
terraform apply
