#!/bin/bash
read name
if [ "$name" == "$USER" ]
  then
    who -u | grep "$name" | grep -v 'tty2'
fi
