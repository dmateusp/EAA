#!/bin/bash
if [ -d $1/$2 ]; then
  echo "The directory already exists"
elif [ -w $1 ]; then
  mkdir $1/$2
  echo "Created directory"
else
  echo "You do not have permissions to create a directory here"
fi
