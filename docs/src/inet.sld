class sockaddr 16
desc stores a socket address

prop family 2
desc the sockets family

prop port 2
desc the port the socket is attached to

prop addr 4
desc the address of the socket

prop misc 8
desc filler data 

proc reset 1 1
args ptr[sockaddr] > ptr[sockaddr]
desc resets the sockets value to zero

proc setfamily 2 1
args ptr[sockaddr] int[family] > ptr[sockaddr]
desc sets the family value of the socket

proc setaddr 2 1
args ptr[sockaddr] int[addr] > ptr[sockaddr]
desc sets the address of the socket

proc setport 2 1
args ptr[sockaddr] int[port] > ptr[sockaddr]
desc sets the port of the socket

class net 56
desc stores network data

prop fd 8 
desc the file descriptor

prop connfd 8
desc the connection file descriptor

prop servaddr 16
desc stores the servers address data

prop cliaddr 16 
desc stores the clients address data

prop clilen 8
desc stores the length of the client

proc open 2 1 
args ptr[net] int[port] > ptr[net]
desc returns a new network object args are data and port

proc poll 1 1
args ptr[net] > ptr[net]
desc waits for a client to connect to the network object and opens a connection 

proc read 3 2
args ptr[net] ptr[buffer] int[buffersize] > int[readbytes] ptr[net]
desc reads the data from a client

proc write 2 1
args ptr[net] ptr[buffer] > ptr[net]
desc writes data to a client

proc finish 1 1
args ptr[net] > ptr[net]
desc closes a client connection

proc close 1 0
args ptr[net] >
desc closes a network object

class http 32
desc a http response parser and maker

prop server 32
desc the name of the server

proc setserver 2 1
args ptr[http] ptr[servername] > ptr[http]
desc sets the name of the server for a http object

proc getheader 3 2
args ptr[http] int[resp] ptr[buffer] > ptr[http] ptr[buffer]
desc gets a http header from a http object

proc parseurl 2 2
args ptr[http] ptr[buffer] > ptr[http] ptr[buffer]
desc gets the url of a http request
