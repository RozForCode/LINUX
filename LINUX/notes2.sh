:' WEEK-10 Slate modules summary/notes
ADVANCED SHELL SCRIPTING
'
read
# to take input
# Bash env variables to read command line args
:'
$0 - name of the program
$1-$9 - values of command line args
$* - values of all command line args
$# - no.of commadn line args
$@ - values of all command line args; each argument is individually qouted if $@ is in quotes
'
shift
# $2 becomes $1, $3 becomes $2 and so on
unshift
# to bring back args 
set 
# powerful 
:'
can be used to set the value of command line args
eg set `date` in the script
$0 remains the same 
$1 become day
#2 become date 
$3 becomes year and so on
so the command line args became the output of the command passed to set 
but the name of the program remained the same
'
$?
# used to display the exit code of last command
:'
0 - successful
any other no. - error 
The specific non-zero value can give you more information about the type of error.
127: Command not found (e.g., trying to execute a non-existent command).
1: General errors - eg division by 0
we can also configure this value
like after a if else writing:
exit 3
will mean $? = 3
'
exit:'
the program exits immediately
'

:'conditional operators
string - true if not null
-n string - true if length>0
-z string - true if string=0
string1 = string2 - true if they are the same
stirng != stirng2 - string if they are not the same 

-gt
-ge
-eq
-ne
-le
-lt

-d - true if file exists and is directory
-f - true if file exists and is ordinary file
-L - true if file exists and is symbolic link

-r - true if file exists and has read permissions
-s - true if file exists and has info
-w - write permission
-x - execute permission


&& or -a
|| or -o
!
'

:'
if else syntax

if test "$answer" = Y
then 
echo "ok"
else
echo "not ok"
fi

elif syntax
read answer
if ["$answer" = Y]
then 
    echo "pl"
elif ["$answer"= N]
then 
    echo "pl"
else
echo "bo"
'
:'
case
    pattern-1)
    command-1
    ;;
    ...
esac
Pattern -   * - matches any string of characters
            ? - matches any single character
            [...] - any char enclosed ,- hypen makes it range
            | choice one of either 
'
read answer
echo 
case "$asnwer" in 
[aA])
    date
    ;;
[bB])
    who
    ;;
*)
echo"wrong input: $answer"
esac
