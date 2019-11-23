#!/bin/bash


str=abc
echo $str    #abc
echo ${str}  #abc      
#     ^^^^ 
# generic (old-school) style of variable expansion
# always works!

# Note, that there is NO space allowed on either sides of
# the equal sign '='
# 
# str =abcd          #
#  Leaving space before a = will make shell try to start command named
#  "str" with an argument "=abcd"
#
# str= abcd
#  If the space left behind a equal sign, shell will set enviornment
#  varible "str" to empty value and run command "abcd" 


### Variable assignment
str='a b  c   d'

echo $str               #a b c d  (white spaces are not preserved)

echo "$str"             #a b  c   d   [!] double-quote preserves a whitespace

name=Igor        # quotes can be omitted when variable name consists of one word
composer="Rimsky Korsakov"  # and must be present when there is more than one element in 
                            # right value of assignment. Omitting a quotes leads to an error
                            #
                            #     ->  Korsakov: command not found
                            #

# Single quoutes will turn off variable interpolation(=expansion=substitution)
fullname='$name Petrov'  # $name was not expanded
echo "$fullname"       # and displays literaly  ->   $name Petrov

surname=Petrov
fullname="$name   $surname"   # even though whitespaces are preserved in variable
                       # assignment, they are suppressed when echoed without a quotation
echo $fullname         #    -> Igor Petrov

composer_full_name=Nikolai\ Rimsky-Korsakov   # as an alternative for a quotation of the multi-element 
                                        # values, each white space needs to be escaped.

# Below is an example of how single quotes can be preserved and still allow variable to expand.
# Following echo statements will result in the same output:
#  \$composer_full_name is 'Nikolai Rimsky-Korsakov'
#
echo "\$composer_full_name is '$composer_full_name'"
echo '$composer_full_name' is \'$composer_full_name\'
