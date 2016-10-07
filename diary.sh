#!/bin/bash
echo "Dear diary,"
read line
nowDate=$(date '+%T-%D')
if [ -d "$HOME/logs" -a -w "$HOME/logs" ]; then
  echo "Directory $HOME/logs is there"
else
  echo "Directory $HOME/logs was not there, so directory was created"
  mkdir "$HOME/logs"
  $line > $HOME/logs/diary_$nowDate.txt
fi

