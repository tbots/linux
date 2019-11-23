str=abc
echo $str
echo ${str}

str =abcd
str= abcd


str='a b  c   d'
echo $str
echo "$str"
echo '$str'
echo "'$str'"


name=Igor
composer="Rimsky Korsakov"

fullname='$name Petrov'
echo $fullname

surname=Petrov
fullname="$name     $surname"
echo $fullname
echo "$fullname"

composer_full_name=Nikolai\ Rimsky-Korsakov
echo "\$composer_full_name is '$composer_full_name'"
echo '$composer_full_name' is \'$composer_full_name\'


echo -n I am string
echo
echo -e "line1\nline2\nline3"
echo line1 \
     line2 \
     line3
