#!/bin/bash

# Use the following as references:

# Get all files that contain at least one instance of "CSC510"
grep -c "CSC510" file*

# Get all files that contain one instance of "sample"
grep -c "sample" file* | grep -E ":1$"

# Get every individual instance of the word "CSC510"
grep -o "CSC510" file*
