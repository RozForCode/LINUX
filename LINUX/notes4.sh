:' WEEK-9 Slate modules summary/notes
grep - used to search text
egrep pr grep -e - for extended regualr exps
fgrep or grep -f - for fixed string patters no exps
'
:'
-i - case insensitive
-w - whole words not just parts
-n - prefix each line of output with 1-based line number
[] - list of range
BRE - ? + { | } ( ) - use these with backslash version
EBRE - without backslash
'
:'
some predefnied classes
[:alnum:] - aplhanumeric
[:ctrl:] - ctrlchars
[:lower:] - lowercase
[:space:] - whitespcae
[:aplha:] - aplha
[:punct:] - punct or symbols
BRE
* - 0 or more
{n}
{n,m}
{,n} - zero to n
{n,} - n to infinity
EBRE
? - 0 or 1
+ - 1 or more
| - alternation
() - grouping
'


