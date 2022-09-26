class sockaddr 16 stores a socket address

prop family 2 the sockets family
prop port 2 the port the socket is attached to
prop addr 4 the address of the socket
prop misc 8 filler data 

proc reset 1 1 resets the sockets value to zero
proc setfamily 2 1 sets the family value of the socket
proc setaddr 2 1 sets the address of the socket
proc setport 2 1 sets the port of the socket

class net 56 stores network data

prop fd 8 the file descriptor
prop connfd 8 the connection file descriptor
prop servaddr 16 stores the servers address data
prop cliaddr 16 stores the clients address data
prop clilen 8 stores the length of the client

proc open 2 1 returns a new network object args are data and port
proc poll 1 1 waits for a client to connect to the network object and opens a connection 
proc read 3 2 reads the data from a client
proc write 2 1 writes data to a client
proc finish 1 1 closes a client connection
proc close 1 0 closes a network object

class http 32 a http response parser and maker

prop server 32 the name of the server

proc setserver 2 1 sets the name of the server for a http object
proc getheader 3 2 gets a http header from a http object
proc parseurl 2 2 gets the url of a http request
