#!/bin/bash
cat /etc/passwd | grep -v '^#' | awk -F: '{print $1}' | awk 'NR%2==0' | rev | sort -r | sed -n ${FT_LINE1},${FT_LINE2}p | sed s'/$/, /' |tr -d '\n' | sed 's/, $/./' | tr -d '\n'
