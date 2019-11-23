#!/bin/bash

# if [ CONDITION ]
# then
#   ACTION
# elif
#   [CONDITION]
# then
#   ACTION
#   ...
# fi

if [ "$1" ] ; then echo variable is set; fi
if [ "$USER" ] ; then echo "$USER"; fi

#====
user=$USER
if [ -n "$user" ]; then
  echo "Not empty"
else
  echo "Empty"
fi  

#====
if [ "$USER" = root ] ;
then 
  echo "This is root"
else
  echo "Regular user"
fi

function is_root()
{
  if [ $UID -eq 0 ];
  then
  echo "Root accout"
  else
  echo "Regular user"
  fi
}

is_root


lampa=lux
#unset lampa

#if [ ${lampa} ] && [ $lampa != "xxx" ]
if [ "$lampa" -a "$lampa" != "xxx" ]
#if [ $lampa != "xxx" ]
then
  echo "condition satisfied"
fi
