#!/bin/bash
matched=$(ls $1 | grep $2)
echo $matched
echo $matched | wc -w
