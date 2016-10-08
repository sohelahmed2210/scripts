#!/bin/bash
#purpose : Server report
#Date : 
#Author :
line="==============================="
echo "System Report for $(hostname)"
total_cpu_core=$( grep -c processor /proc/cpuinfo )
total_memory=$( free -m | awk '/Mem/{ print $2,"MB"}')


echo "CPU COres : $total_cpu_core"
echo $line

echo "Memory	: $total_memory"
echo $line

echo "Disk SPace"
df -hTP --total
echo $line

total_users=$( cat /etc/passwd | grep wc -l )
echo "Users : $total_users"
echo $line

echo "process"
ps -ef
echo $line

