#!/bin/bash

#set -x

NOW=$(date +%F_%H%M%S)
filename=curl_output_$NOW

while true
do
echo "."

curl -v -x <proxydetails:port> https://elastic.snaplogic.com >> $filename 2>&1 \n
echo "END OF CURL--------------------------------------------------------------------------------------" >> $filename

curl -v -x <proxydetails:port>  https://node1:port >> $filename 2>&1 \n
echo "END OF CURL--------------------------------------------------------------------------------------" >> $filename
curl  -v -x <proxydetails:port>  https://node2:port >> $filename 2>&1 \n
echo "END OF CURL--------------------------------------------------------------------------------------" >> $filename
curl - -v -x <proxydetails:port>  https://node3:port >> $filename 2>&1 \n
echo "END OF CURL--------------------------------------------------------------------------------------" >> $filename
curl  -v -x <proxydetails:port>  https://node4:port >> $filename 2>&1 \n
echo "END OF CURL--------------------------------------------------------------------------------------" >> $filename
curl  -v -x <proxydetails:port>  https://node5:port >> $filename 2>&1 \n
echo "END OF CURL--------------------------------------------------------------------------------------" >> $filename
curl  -v -x <proxydetails:port>  https://node6:port >> $filename 2>&1 \n
echo "END OF CURL--------------------------------------------------------------------------------------" >> $filename
curl  -v -x <proxydetails:port>  https://FM:port1 >> $filename 2>&1 \n
echo "END OF CURL--------------------------------------------------------------------------------------" >> $filename
curl   -v -x <proxydetails:port>  https://FM:port2 >> $filename 2>&1 \n
echo "END OF CURL--------------------------------------------------------------------------------------" >> $filename
sleep 5
done
