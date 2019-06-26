#!/bin/bash
limit=$(date | sed 's/:/ /g' | awk '{print $5}')
((limit+=2))
if [ $limit -gt 60 ]; then
  limit=$(expr "$limit" - 60)
fi

i=0
while [ $i -lt 1 ]
do
  test=$(date | sed 's/:/ /g' | awk '{print $5}')
  if [ $test -gt $limit ];then
    sed -i 's/currentIP/rightIP/g' /etc/sysconfig/network-scripts/ifcfg-eth0
    service network restart
    ((i++))
  fi
done
