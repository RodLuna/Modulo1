#!/bin/bash

echo "                         ##############################################"
echo "                         ############## LIST OF CIAS  #################"
echo "                         ##############################################"

echo "  AA      AQ      AS      B6      CO      DL      EV      F9     FL      HA"
echo "  MQ      NW      OH      OO      TZ      UA      US      WN     XE      YV"

# The command read identify the parameter as companyname
read -p "Which company are you interested in? " companyname

#grep $companyname 2006-sample.csv | cut -d, -f9,15 | cut -d, -f2 | tail -n +2| grep -v '-'| grep -v '^$'| paste -sd+ | bc

#echo "The company $companyname had a total of $(grep $companyname 2006-sample.csv | cut -d, -f9,15 | cut -d, -f2 | tail -n +2| grep -v '-'| grep -v '^$'| paste -sd+ | bc) late minutes."
grep $companyname 2006-sample.csv | cut -d, -f9,15 | cut -d, -f2 | tail -n +2| grep -v '-'| grep -v '^$'| grep -v '0.0'| wc -l
