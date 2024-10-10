#!/bin/bash

#############
#  Part a   #
#############

# Get all second-class passengers who embarked from Southampton (S)
grep -E "^[0-9]{1,3},[0-9],2,.*,.*,.*,.*,.*,.*,.*,.*,S" titanic.csv

#############
#  Part b   #
#############

# Get all second-class passengers from Southampton | Change female and male to F and M respectively
grep -E "^[0-9]{1,3},[0-9],2,.*,.*,.*,.*,.*,.*,.*,.*,S" titanic.csv | sed 's/female/F/; s/male/M/' titanic.csv

#############
#  Part c   #
#############

# It should theoretically print out the average age, but doesn't seem to work yet
grep -E "^[0-9]{1,3},[0-9],2,".*",.*,.*,.*,.*,.*,.*,.*,S" titanic.csv | sed 's/female/F/; s/male/M/' | gawk '{ ageSum += $6; counter += 1 } END { print ageSum / counter }'

