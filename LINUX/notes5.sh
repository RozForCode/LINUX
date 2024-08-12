:' WEEK-7 Slate modules summary/notes
'
cat /etc/shells #installed shells
echo $SHELL # current running shell
echo $0 #current shell running in the terminal
ps -forest #running processes include shells
:'
exec /bin/tcsh
execute a new shell replacing the current shell
alias
unalias
'
:'
env variable
BASH - full path to bash
HISTFILE - pathname of hte history file
HOME - name of the home directory
PATH - users search path (colon separated)
PS1 - primary shell prompt on command line, - used to control appearance of bash commadn line prompt
PWD - name of current working directory
TERM - tyep of users console .terminal
'
Export PS1='\d - \t $'
# $$ - pid of current process
# $! - PID of most recent bg process
# $# - total no
# $* - all values of command line

:'BASH SCRIPTING
use the expr command to do integer arthimetic
c=$a+$b
5+7
c='expr $a+$b'
12
expr $a+$b
12

OR use let

let c=$a+$b
echo $c
12

OR use $(())
c=$(($a+$b))
echo $c

bc - for floating point

'
