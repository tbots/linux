#!/bin/bash/

#test $1 && echo "\$1 is not empty" || echo "$1 is empty"
#test $1 && echo '$1 is not empty' "and hold: |$1|" || echo "$1 is empty"
test $1 && echo "\$1 is not empty and hold: |$1|" || echo "$1 is empty :("
