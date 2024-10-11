#!/bin/bash

#############
#  Part a   #
#############

# Gets all files containing sample by word, then 
# grep -ol "sample" dataset1/file* | xargs -I{} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); if [ "$count" -ge 3 ]; then size=$(stat --printf="%s" "{}"); echo "$count $size $(basename "{}")"; fi'


# [OUTDATED]
# Get files containing sample by word | cut colon, take first half | files containing CSC510 by word | get unique counts |
# | Filter out counts less than 3 | cut colon | cut whitespace from front 7 characters
# grep -ol "sample" file* | xargs grep -o "CSC510" | uniq -c | grep -E "[3-9]{1,} file*" | cut -d: -f1 | cut -b 7-

#############
#  Part b   #
#############

# Sort in descending order and by filesize to break tiebreakers
# sort -k1,1nr -k2,2nr

#############
#  Part c   #
#############

# Change filenames from file_ to filtered_ | print files
# sed 's/file_/filtered_/'

grep -ol "sample" dataset1/file* | xargs -I{} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); if [ "$count" -ge 3 ]; then size=$(stat --printf="%s" "{}"); echo "$count $size $(basename "{}")"; fi' | sort -k1,1nr -k2,2nr | sed 's/file_/filtered_/'

exit
