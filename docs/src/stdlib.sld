desc Stdlib is a assortment of basic utilities to speed up general life in slam.
class bool 1
desc A boolean value

class cstr 0
desc A string compatible with c, meaning it is NULL terminated

proc len 1 1
desc Returns the length of the string

proc print 1 0
desc Prints the string to STDOUT

proc cr 0 0
desc Prints a new line to STDOUT

proc println 1 0
desc Prints the string followed by a new line to STDOUT

proc eq 2 1
desc Returns true if the 2 top strings are equal

proc copy 2 2
desc Copy a string from a pointer to another

proc last 1 1
desc Returns the last character of a string

proc clear 1 1
desc Fills a string with \0

proc isnum 1 1
desc Returns true if a string is a number

proc tonum 1 1
desc Parses a string to a int, quits on failure

proc split 3 2
desc Splits a string on a deliminator

class int 8
desc Stores a integer

prop data 8
desc The integers value

proc cstr 1 1
desc Converts a int to a cstr

proc cstrhex 1 1
desc Converts a int to a cstr with hexadecimal

proc print 1 0
desc Prints a int to STDOUT

proc printhex 1 0
desc Prints a int in base 16 to STDOUT
