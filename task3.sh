#!/bin/bash

#############
#  Part a   #
#############

# Get all second-class passengers who embarked from Southampton (S)
# grep -E "^[0-9]{1,3},[0-9],2,.*,.*,.*,.*,.*,.*,.*,.*,S" titanic.csv

#############
#  Part b   #
#############

# Change female and male to F and M respectively; female is changed first as female contains "male" and would mess up sed
# sed 's/female/F/; s/male/M/' titanic.csv

#############
#  Part c   #
#############

# Identifies new delimiter as ',' and calculates the average of the ages of all the passengers
# Note: The age is technically the 6th category, but the inclusion of commas in the name strings for the passengers
# reguires an additional incrementation for the category number for ageSum
# gawk -F, '{ ageSum += $7; counter += 1 } END { print ageSum / counter }'

# All the parts piped together
grep -E "^[0-9]{1,3},[0-9],2,".*",.*,.*,.*,.*,.*,.*,.*,S" titanic.csv | sed 's/female/F/; s/male/M/' | gawk -F, '{ ageSum += $7; counter += 1 } END { print ageSum / counter }'

exit
