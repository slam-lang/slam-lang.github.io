class sysc 0 Stores syscall values
class fm 0 Stores file mode values
class time 16 Stores a time
prop sec 8 The seconds
prop nsec 8 The nano-seconds

class statresult 144 stores the result of a stat evaulation
prop dev 8 
prop ino 8 
prop nlink 8 
prop mode 4 
prop uid 4 
prop gid 4 
prop _ 4
prop rdev 8 
prop size 8 
prop blksize 8 
prop blocks 8 
prop _ 24

class os 0 A container for os related procs
proc fork 0 1 Forks the current process
proc execcmd 1 0 Runs a command silently
proc execcmdloud 1 0 Runs a command
proc execcmdecho 1 0 Logs then runs a command silently
proc execcmdecholoud 1 0 Logs then runs a command
proc args 1 1 Gets the nth argument
proc env 1 1 Goets an environmental var, returns NULL if it dosent exist
