#!/bin/bash
dir=$(ls -l . | awk '/^d/ {print $NF}')
for i in $dir
 do
     echo -e "\033[32m $i \033[0m"
     cd ./$i
     ls *-api &> /dev/null && mvn clean install -pl *-api -am || echo '无api'
     cd - > /dev/null
     echo ''
 done
