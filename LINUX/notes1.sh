:' WEEK-11 Slate modules summary/notes
Processes
3 Process states - running,ready,blocked
Process State codes 
D - uninterruptible sleep
S - interruptible sleep
I - Idle keernel thread
R - Running or runnable
T - stopped by job control signal or debugger
X - dead 
Y - defunct ("zombie") process, terminated by not repeated by its parent
'
ps -l
:'
to view process and its attribtues
PID - every process has unique process id number
PPID - parent process Id
PRI - assigned priorities default - 80
NI - nice value - renice command is used to change this property, normally done to a background job
to view processe for a particular user
'
ps -lu username
:'
renice +19 2344 #this will lower the priority of a job
renice -20 2344 #this will increase the priority of a job
'
#Jobs - processses that run in the background
# to run a job use &
# eg - nano &
jobs
# to show all running jobs - []+ : last added job , []-:previously added job
fg
# to move a job to the foreground
:'
ctrl+z - moves the running fg process bg making it a job
'
kill -n 29384
:'
this will kill the job n corresponds to the list of signals 9 is for sigkill
or killall command
'
ls /proc
:'
this directory contains info about processses 
also about hardware and current kernel
'
pstree
:'
processes are mapped into a tree which can be viewed with the pstree command
'
top
:'
this command gives dynamic, screen-based interface for running processes
'
exec ; env -i
:'
env -i is used to run scripts in modified enviroment
exec - is used for redirection and file descriptor manipulation
'