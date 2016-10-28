#!/bin/bash
if [ $USER == 'eaauser' ]; then
  echo "ok"
else
  echo "You are not eaauser!"
  echo "You are not eaauser!" - $(date +%D-%Hh:%M) >> $HOME/log.txt
fi
