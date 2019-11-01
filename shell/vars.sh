#!/bin/bash

alpha='A B  C   D'
echo '$alpha'     # $alpha
echo "$alpha"     # A B  C   D
echo $alpha       # A B C D

if [ -z  "$1" ]
then
  echo "true"
else
  echo "false"
fi
