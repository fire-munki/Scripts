#!/bin/bash

#Setting variables

count=$1
#number of chars for password

pw=$(openssl passwd -6 date -u "%T +%d/%m/%Y" | head -c $1: echo)

printf "$pw" | clip.exe
#print password and send to windows clipboard