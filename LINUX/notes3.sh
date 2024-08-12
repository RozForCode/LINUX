:' WEEK-9 Slate modules summary/notes
sed - stream editor for transformation on an input stream
'
:'
^ $
. - any single char
* - 0 or more
? - 0 or 1
[acv] - one char from this
[^anv] - any char but not this
(c)\{m,n} - number specified
\(expression\) - group operator
\n - nth refernce - back reference
epx1| exp2 - one of them
'
sed -e 's/dog/cat/g' -e 's/cat/elephant/'
sed -e 's@http://www.foo.com@http://www.bar.net@' file
sed -e '1,2d' file
sed -e '3d' file
#range delete inclusive repetitive
sed -e '/hello/,/goodbye/d' file
#substitution with address with delete
sed -e '/^line.*one/s/line/LINE/' -e '/line/d' file


:'part 1 done now part 2 awk'
awk '{print}' /etc/password
awk '{print $0}' /etc/password
awk -F':' '{print $2}' file
awk -F':' 'NR==1 {print}' file
awk -F':' '$1==0 {print}' file
:'
==
!=
<>
<=
>= 
# ?:
'
read yourChoice
awk '$1==$yourChoice {print}' file
awk 'NR==$yourChoice {print}' file #your file doesn't have numbers

#arithemtic sum of all 3rd field values
awk -F: '{total += $3} END {print total}' file
# use of END - runs after all input is processed
# use of BEGIN - runs before all input is processed

#bash cannot calc with floating point but awk can
awk 'BEGIN {printf "%.3f\n", 2005.03/3}' 

#piping with awk
history | awk '{print $2}' | sort | uniq -c | sort -rn | head

