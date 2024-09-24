#!/bin/bash
i=1
echo "Enter your base network IP address:"
read NetworkIP
echo "Enter your packet response time:"
read Response
echo "Enter your packet size:"
read Size
echo "Enter the number of packets that you would like to send:"
read Packets
echo "Enter your interval between sending each ping:"
read Interval
until [[ $i == 256 ]]
do
ping -c $Packets -s $Size -W $Response -i $Interval $NetworkIP.$i
((i++))
done
echo "Scan Complete"
