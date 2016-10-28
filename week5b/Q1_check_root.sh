#!/bin/bash
if [ $EUID == 0 ]; then
  echo "Hello root!"
else
  echo "Just another user" $(date +%D-%Hh:%M) >> $HOME/log.txt
fi
