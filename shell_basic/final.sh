#!/bin/bash/

echo "All the arguments excluding \$0:" $@
echo "Argument count:" $#

a="2 5"
#unset a
if [ "$a" ]
then
  echo First block
else
  echo Second block
fi  
