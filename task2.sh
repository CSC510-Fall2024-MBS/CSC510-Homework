#!/bin/bash

#############
#  Part a   #
#############

# Gets all files by word instead of line count, this preserves the number of occurrences
# Get files containing sample by word | cut colon, take first half | files containing CSC510 by word | get unique counts |
# | Filter out counts less than 3 | cut colon | cut whitespace from front 7 characters
grep -ol "sample" file* | xargs grep -o "CSC510" | uniq -c | grep -E "[3-9]{1,} file*" | cut -d: -f1 | cut -b 7-

#############
#  Part b   #
#############

# Sort in descending order (still need to sort tiebreakers by filesize with gawk)
sort -rk1,1

#############
#  Part c   #
#############

# Change filenames from file_ to filtered_ | print files
sed 's/file_/filtered_/' | xargs ls

exit
