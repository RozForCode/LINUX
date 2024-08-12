# WEEK-6 Slate modules summary/notes
paste file1 file2 > file3
# joins first line of file1 with first line of file2 and so on
join file1 file2 > file3
:'
t is for delimiter
'
# joins file1 and file2 based on common field
sort 
:'
-d - blanks and alphanumeric
-f - ignores case
-M - month
-n - numerically
-r - reverse order
-K - start and end at a user-defined position
-t - delimiter
'
cut -d: -f 3 company.data
cut -c1-6 comany.data
# d is for delimited in cut in awk it's F, in sort it t
# diff - compare files 
:'
-a means appended 
-c means changed 
-d 
< remove line
> add line
'

# cmp - compare files byte by byte
# comm - comapre sorted files
wc -m file

:'
-l - no.of lines
-c - count of bytes
-m - no.of chars
-L - length of longest line

'