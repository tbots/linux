#!/bin/bash

alpha='A B  C   D'
echo '$alpha'     # $alpha
echo "$alpha"     # A B  C   D
echo $alpha       # A B C D

if [ -z "$1" ]   # if the variable is unset
then
  echo "true"
else
  echo "false"
fi
HRG='ahoj'
if [ "$HRG" ] ; then
  echo "exists"
else
  echo "not exists"
fi
