#!/bin/bash

find . -type f -exec dos2unix {} \;
find . -type f -name "[[:digit:]]*" -exec chmod u+x {} \;
