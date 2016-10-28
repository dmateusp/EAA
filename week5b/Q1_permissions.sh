#!/bin/bash
if [ -w $1 ]; then
  echo "You have write permissions"
else
  echo "You don't have write permissions"
fi
