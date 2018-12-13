#!/bin/sh

if [ -f gpu.md ]; then
  rm -f gpu.md
fi

while [ true ]
do
  #nvidia-smi | grep "3  Tesla P40" -A1 | tail -n1 | awk '{print $13}'
  nvidia-smi | grep "0  Tesla P40" -A10 | awk '{if(NR==2 || NR==11) print $13}'
  sleep 10
done


#cat gpu.md | awk '{sum+=substr($1, 0, length($1)-1)} END {print "Average = ", sum/NR}}'
