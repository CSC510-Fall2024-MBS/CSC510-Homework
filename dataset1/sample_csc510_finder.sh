#!/bin/bash

grep -c "sample" file* | grep -E ":1$" | cut -d: -f1 | xargs grep -c "CSC510" | grep -E ":3$" | cut -d: -f1 | xargs ls -l | sort -k5,5nr | sed 's/file_/the_name_/' | gawk '{ print $9 "_filltered }'