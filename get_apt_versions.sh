#!/bin/bash
# get installed apt version of each specified package
# ex.
# bash get_apt_versions.sh  wget bedtools bamtools samtools

# do it
for package in $@ ; do
    dpkg -s $package | grep Version | echo "$package=$(awk -F ' ' '{print $NF}') \\"
done

