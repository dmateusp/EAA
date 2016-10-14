#!/bin/bash
echo "Dear diary,"
read line
nowDate=$(date '+%T-%D')
if [ -d "$HOME/logs" -a -w "$HOME/logs" ]; then
  echo "Directory $HOME/logs is there"
else
  echo "Directory $HOME/logs was not there, so directory was created"
  mkdir "$HOME/logs"
fi
echo $nowDate >> $HOME/logs/diary.txt
echo $line >> $HOME/logs/diary.txt
echo >> $HOME/logs/diary.txt
