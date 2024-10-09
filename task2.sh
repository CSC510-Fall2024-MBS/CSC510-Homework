#!/bin/bash

#############
#  Part a   #
#############

# Gets all files by word instead of line count
# Get files containing sample by word | cut colon, take first half | files containing CSC510 by word | get unique counts |
# | Filter out counts less than 3 | cut colon | cut whitespace from front 9 characters
grep -o "sample" file* | cut -d: -f1 | xargs grep -o "CSC510" | uniq -c | grep -E "[3-9] file*" | cut -d: -f1 | cut -b 9-

#############
#  Part b   #
#############




