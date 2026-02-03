#!/bin/bash

read -p "dir?" dir
read -p "which lib?" lib
read -p "destination?" destination
cd $dir 
ldd $lib | awk '/=>/ {print $3}' | grep -v "^$" | grep -v 'vdso\|ld-linux' | xargs -I{} cp {} /$destinatio 
