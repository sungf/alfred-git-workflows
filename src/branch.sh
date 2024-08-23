#!/bin/bash
dir=$(ls -l . | awk '/^d/ {print $NF}')
for i in $dir
 do
     echo -e "\033[32m $i \033[0m"
     cd ./$i
     git branch
     cd - > /dev/null
     echo ''
 done