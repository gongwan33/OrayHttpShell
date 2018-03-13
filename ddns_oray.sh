#!/bin/bash

#--------------config-------------
user=username #Your Oray username
passwd=password #Your Oray password
hostname=domain #Your bounded domain. If there are more than one domain, separate by ','

#--------------Process-----------

oldIP=`cat ddns_cur_ip.dat`
curExIP=`curl http://members.3322.org/dyndns/getip | tee ddns_cur_ip.dat`

if [ "$curExIP" != "$oldIP" ];then
    echo "Refresh IP from $oldIP to: $curExIP"
    orayHttpAdd="http://$user:$passwd@ddns.oray.com/ph/update?hostname=$hostname"
    curl $orayHttpAdd
else
    echo "No change on external IP - $curExIP"
fi

