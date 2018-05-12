#!/bin/bash
awk -F '|'  'BEGIN { print "{\"fields\":["} END {print "]}"}  $0 ~ /\|/ && $0 !~ /---/ && $0 !~  /tags/ {print "{\"url\":\""$2"\",\"tags\":[\""$3"\"],\"comment\":\""$4"\",\"language\":\""$5"\"},"}' bookmarks.md 
echo "think of removing the comma after the last array entry"
