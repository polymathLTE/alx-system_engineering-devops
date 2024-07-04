#!/bin/bash
# this script retrieves the byte size of a HTTP response
 curl localhost -sI | grep "Content-Length" | awk '{print $2}'
