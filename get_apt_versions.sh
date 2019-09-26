#!/bin/bash
# get installed apt version of each specified package
# ex.
# bash get_apt_versions.sh  wget bedtools bamtools samtools

# do it
printf "RUN apt-get install -y\t\ "
for package in $@ ; do
    dpkg -s $package | grep Version | printf "\n\t\t\t\t\t\t$package=$(awk -F ' ' '{print $NF}') \\"
done
printf "\n"

