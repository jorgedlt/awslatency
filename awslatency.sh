#!/usr/bin/env bash

# A quick script to test latency times between AWS datacenters
#
# 28 Jan 2017 - jorgedlt@gmail.com

sites=$( cat $0 | grep '^#\.' | sed -e 's/^#\.//' |
  awk '{print $1}' | tr -d ' ')
data=$( cat $0 | grep '^#\.' | sed -e 's/^#\.//' )

for i in $sites; do
  echo "$data"  | grep $i | cut -d' ' -f3,4
  pingraw=$(/sbin/ping -W 5000 -c 3 ${i})
  packets=$(echo "${pingraw}" | grep packets | cut -d',' -f1,2,3)
  roundtrip=$(echo "${pingraw}" | grep min.avg.max | cut -d'/' -f5)
  echo "     $packets $roundtrip ms"
done

# AWS DataCenters Data - 27 JAN2017
#. dynamodb.us-east-1.amazonaws.com	US-East (Virginia)
#. dynamodb.us-west-1.amazonaws.com	US-West (California)
#. dynamodb.us-west-2.amazonaws.com	US-West (Oregon)
#. dynamodb.eu-west-1.amazonaws.com	Europe (Ireland)
#. dynamodb.eu-central-1.amazonaws.com	Europe (Frankfurt)
#. dynamodb.ap-south-1.amazonaws.com	Asia-Pacific (Mumbai)
#. dynamodb.ap-northeast-2.amazonaws.com	Asia-Pacific (Seoul)
#. dynamodb.ap-southeast-1.amazonaws.com	Asia-Pacific (Singapore)
#. dynamodb.ap-southeast-2.amazonaws.com	Asia-Pacific (Sydney)
#. dynamodb.ap-northeast-1.amazonaws.com	Asia-Pacific (Tokyo)
#. dynamodb.sa-east-1.amazonaws.com	South-America (Sao Paulo)
#. dynamodb.cn-north-1.amazonaws.com.cn	China (Beijing)
