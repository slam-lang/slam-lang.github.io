desc Mem is full of helper functions related to memory management

class heapentry 17 a helper for storing data in the heap
prop Addr 8 the address of the entry
prop Flags 1 some flags for the entry
prop Size 8 the size of the entry
prop Data 0 the actual entry data

proc isentry 1 1 returns true if the address is a heapentry

class mem 0 a wrapper for memory related procs

proc copy 3 0 copies x bytes from one location to another
proc eq 3 1 returns true of the next x bytes are equal
proc zero 2 0 sets the next x bytes to zero

class heap 0 a wrapper for the heap

proc allocpage 0 0 DONT USE. allocates another page to the heap
proc init 0 0 DONT USE. initializes the heap
proc map 0 0 prints the heap to stdout
proc alloc 1 1 allocates x bytes in the heap and returns a pointer
proc zalloc 1 1 allocates x bytes in the heap sets them to zero and returns a pointer
proc free 1 0 frees a pointer in the heap, quits on failure
proc tryfree 1 0 frees a pointer in the heap does nothing on failure
proc realloc 2 1 resizes a pointer in the heap
