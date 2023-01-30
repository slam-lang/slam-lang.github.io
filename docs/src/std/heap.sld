class heapentry 17
desc A entry on the heap.

prop addr 8
desc The address of the entry, this is to help with copying.

prop flags 1
desc Some flags for the entry, the last bit is 0 if the entry is free.

prop size 8
desc The requested size of the entry, the entry may be bigger though.

prop data 0
desc The data for the entry, atleast size bytes.

proc isentry 1 1
args ptr[entry] > int[valid]
desc Returns bool.true if the address is of a valid entry.

proc setfree 1 0
args ptr[entry] > _
desc Sets the free flag of an entry.

proc create 1 0
args ptr[entry] > _
desc Makes an entry valid.

class heap 0
desc Manages the heap.

const BRK 12
desc Just a break syscall, will be reloacated to OS.

const PAGE_SIZE 64000
desc The size of a page on the heap.

const STEP_SIZE 64
desc The minimum size of a heap entry.

var startaddr 8
desc The start of the heap.

var endaddr 8
desc The end of the heap.

var allocstart 8
desc Where to start allocating on the heap.

var isinit 1
desc Is bool.true if the heap is init.

proc newpage 0 0
proc init 0 0

proc empty 0 1
proc alloc 1 1
proc zalloc 1 1
proc realloc 2 1
proc free 1 0
