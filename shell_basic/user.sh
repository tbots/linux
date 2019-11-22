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



function get_field()
{
  grep "^$USER" /etc/passwd | cut -d: -f $field 
}

while [ -n "$1" ]
do 
  #echo $@
  #echo "variable: $1"
  if [ "$1" == '-l' ]
  then
    echo -n "Login name: "
    field=1
    get_field
  elif [ "$1" == '-x' ]
  then
    echo -n "Encrypted password: "
    field=2
    get_field
  elif [ "$1" == '-uid' ]
  then
    echo -n "Numerical user ID: "
    field=3
    get_field
  elif [ "$1" == '-gid' ]
  then
    echo -n "Numerical group ID: "
    field=4
    get_field
  elif [ "$1" == '-c' ]
  then
    echo -n "User name or comment field: "
    field=5
    get_field
  elif [ "$1" == '-d' ]
  then
    echo -n "User home directory "
    field=6
    get_field
  elif [ "$1" == '-i' ]
  then
    echo -n "Optional user command interpreter: "
    field=7
    get_field
  else
    echo "option cannot be recognized"  
    echo "Usage: $0 OPTION... "
    echo "Display specific fields from /etc/passwd"
    echo "" 
    echo "  -l       login name"
    echo "  -x     optional encrypted password"
    echo "  -uid                numerical user"
    echo "  -gid               numerical group"
    echo "  -c    user name or comment field"
    echo "  -d           user home directory"
    echo "  -i optional user command interpreter"
    
    exit 1
  fi
  shift 1
done  
