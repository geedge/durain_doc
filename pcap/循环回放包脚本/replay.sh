#!/bin/sh
#DIR=/home/mesasoft/dns_pcap/
DIR=/home/mesasoft/testpcap/pcap/
while [ 1 ]; do
find $DIR -name "*.pcap" | while read line
do

ln -fs $line dumpfile
ls -l dumpfile
sleep 5
./sapp
done
sleep 100
done

