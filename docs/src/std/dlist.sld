class dlist 24
desc Dynamic list, an expandable array.

prop max 8
desc The available free elements in the list.

prop size 8
desc The elements in the list.

prop elemsize 8
desc The size of an element in the list.

prop data 0
desc The data for the list.

const STEP 16
desc How much elememnts to allocate when a list needs to expand.

proc new 1 1
args int[elemsize] > ptr[dlist]
desc Creates a new dlist.

proc free 1 0
args ptr[dlist] > _
desc Frees a dlist from the heap.

proc len 1 1
args ptr[dlist] > int[length]
desc Gets the length of a dlist.

proc getptr 2 1
args ptr[dlist] int[idx] > ptr[element]
desc Gets the idx element of a dlist.

proc pop 1 1
args ptr[dlist] > ptr[element]
desc Gets the last element of a dlist, and removes it.

proc append 2 1
args ptr[dlist] ptr[data] > ptr[dlist]
desc Adds a element to the end of a dlist, may reposition the dlist.

proc last 1 2
args ptr[dlist] > ptr[element]
desc Returns the last element in a dlist.
