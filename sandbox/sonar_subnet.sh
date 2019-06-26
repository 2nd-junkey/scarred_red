#!/bin/sh

for data in `ifconfig | grep broadcast`
do
	# echo "$data"
	if [ `echo $data | grep -c 255` -eq "1" ]; then
		SUBNET=$data
		break
	fi
done
echo ${SUBNET%.*}.{1..254} | xargs -P256 -n1 ping -c 1 | grep ttl | sort
