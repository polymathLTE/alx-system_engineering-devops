#!/bin/bash
# this script retrieves the byte size of a HTTP response
 curl "$1" -sI | grep "Content-Length" | awk '{print $2}'
