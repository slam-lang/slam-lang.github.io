class cstr 0
desc Stores a cstring, null terminated char array.

proc len 1 1
args ptr[cstr] > int[length]
desc Gets the length of a cstring.

proc print 1 0
args ptr[cstr] > _
desc Prints a cstring to the console.

proc println 1 0
args ptr[cstr] > _
desc Prints a cstring to the console followed by a new line.

proc cr 0 0
args _ > _
desc Prints a new line to the console.

proc eq 2 1
args ptr[cstr] ptr[cstr] > int[equal]
desc Compares 2 cstrings, returns bool.true if they are equal.

proc cpy 2 2
args ptr[dest] ptr[src] > ptr[dest] ptr[src]
desc Copies src to desc and appends a null terminator.

proc last 1 1
args ptr[cstr] > ptr[last]
desc Gets the last char in the cstring.

proc clear 1 1
args ptr[cstr] > ptr[cstr]
desc Fills a cstring with zeros.

proc cat 2 1
args ptr[dest] ptr[src] > ptr[dest]
desc Appends src to dest.

proc isnum 1 1
args ptr[cstr] > int[number?]
desc Returns bool.true if a cstr is a number.

proc int 1 1
args ptr[cstr] > int[value]
desc Converts a cstring to a number.

proc split 3 2
args ptr[src] int[delim] ptr[dest] > ptr[start] ptr[end]
desc Splits src at delim, destroys src.

proc iter 1 2
args ptr[self] > ptr[self] ptr[next]
desc iterates through a cstr.
