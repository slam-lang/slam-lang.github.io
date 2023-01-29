class seq 24
desc Stores a sequence, essentially an array, USE DLIST INSTEAD

prop size 8
desc The size of the seq

prop max 8
desc The max size of the seq

prop elem 8
desc The size of an element in the seq

proc new 2 1
args int[elemsize] int[maxsize] > ptr[seq]
desc creates a new seq

proc setlen 2 1
args ptr[seq] int[size] > ptr[seq]
desc sets the length of the seq

proc len 1 1
args ptr[seq] > int[size]
desc returns the length of the seq

proc pushint 2 1
args ptr[seq] int[value] > ptr[seq]
desc pushes the value to the seq

proc pushptr 2 1
args ptr[seq] ptr[value] > ptr[seq]
desc pushes the value at pointer to the seq

proc extend 2 1
args ptr[seq] ptr[max] > ptr[seq]
desc resizes a seq to have the max max

proc getaddr 2 2
args ptr[seq] int[index] > ptr[seq] ptr[value]
desc gets the value at index in the seq

proc print 1 0
args ptr[seq] > _
desc prints a seq

proc getaddr 2 2
args ptr[seq] > ptr[seq] ptr[value]
desc pops the last value in the seq

proc free 1 0
args ptr[seq] > _
desc frees a seq from memory
