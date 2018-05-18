#!/bin/bash
#This script will reverse each word in a line but leave it in its original place
echo Enter a line you wish to reverse:
read line
revLine=""
for word in $line
do
  length=${#word}
  counter=0
  revWord=""
  while [ $counter -le $length ]
  do
    revWord=${word:$counter:1}$revWord
    ((counter++))
  done
  revLine+=" "$revWord
done
echo $revLine
