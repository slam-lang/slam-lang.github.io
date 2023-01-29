class sysc 0
desc stores syscalls

class fm 0
desc stores file modes

const READ 0
const WRITE 1
const READWR 2
const ACC 3

class os 0
desc container for os related helper funcs

proc fork 0 1
args _ > int[pid]
desc forks the process, see fork syscall for linux

proc execcmd 1 0
args ptr[cstr array] > _
desc runs a command quietly

proc execcmdloud 1 0
args ptr[cstr array] > _
desc runs a command

proc execcmdecho 1 0
args ptr[cstr array] > _
desc runs a command quietly after echoing it

proc execcmdecholoud 1 0
args ptr[cstr array] > _
desc runs a command after echoing it

proc args 1 1
args int[id] > ptr[cstr]
desc gets the argument from argv at index id

proc env 1 1
args ptr[name] > ptr[value]
desc gets the environmental variable named name

proc cwd 0 1
args _ > ptr[value]
desc gets the current working directory

proc existsf 1 1
args ptr[path] > int[exists]
desc returns 1 if the file at path exists

proc openf 4 1
args lol
