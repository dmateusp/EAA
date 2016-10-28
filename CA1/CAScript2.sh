#!/bin/bash
process_count=$(ps -e | grep $1 | wc -l)
logExist=$(ls $HOME/ | grep log.txt | wc -l)
timestamp=$(date +%F_%r)
if [ $logExist == 0 ]
  then
    echo "" > $HOME/log.txt
fi
echo $timestamp $1 $process_count >> $HOME/log.txt
