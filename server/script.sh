#!/bin/bash
################################################################################
# Create a http server on port 8080 with netcat
# From the manual
# -l Used to specify that nc should listen for an incoming connection rather
# than initiate a connection to a remote host.
################################################################################

while true; do
  { echo -ne "HTTP/1.0 200 OK\r\n\r\n"; cat ./text.txt; } | nc -l 127.0.0.1 8080
done
