#!/bin/bash
for package in $@ ; do


    dpkg -s $package | grep Version | echo "$package=$(awk -F ' ' '{print $NF}') \\"
 

done

