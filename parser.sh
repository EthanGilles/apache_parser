#!/bin/bash

# Check if there is an argument
if [ $# -ne 1 ]; then
    echo "Error: No log file entered."
    echo "---------------------------"
    echo ""
    echo "Usage: ./parser.sh <apache_log_file>"
    exit 1
fi

# Add a variable for the log file
log=$1

# Check if the log file exists.
if [ ! -f "$log" ]; then
    echo "File not found: $log"
    exit 1
fi

# The ninth field is the status code, so extract the ninth field from all the lines.
# Then sort it by that status code, and get a count of the occurance using '-c'
# Finally, print the needed info to the screen.
awk '{print $9}' "$log" | \
sort | \
uniq -c | \
awk '{print "HTTP status code:", $2, "Count:", $1}'
