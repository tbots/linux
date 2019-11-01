#!/bin/bash


# login name       -l
# optional encrypted password     -x
# numerical user                -uid
# numerical group               -gid
# user name or comment field    -c
# user home directory           -d
# optional user command interpreter -i

# ./parse_passwd -l -c 
# fish   /home/fish
while [ -n "$1" ]
do 
  echo $@
  echo "variable: $1"
  if [ "$1" == '-l' ]
  then
    echo -n "Login name: "
    grep "^$USER" /etc/passwd | cut -d: -f1 
  elif [ "$1" == '-x' ]
  then
    echo -n "Encrypted password: "
    grep "^$USER" /etc/passwd | cut -d: -f2 
  else
    echo "option cannot be recognized"  
    exit 1
  fi
  shift 1
done  
