#!/bin/bash
# Program name: ipcrawler.sh
# Mini script : Get the IP address of each domain name contained into domain_list.txt

cat ./domain_list.txt |  while read output
do
    echo -n "$output : "
    
    # Hardcore way
    #ping -c 1 -i 1  "$output" | awk -F" |:" '/PING/{print $3}'
    
    # Nice way
    #nslookup "$output" | awk -F" |:" '/Address: /{print $3}'
    
    #Easiest way
    dig +short "$output"
done