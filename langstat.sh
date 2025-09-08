#!/bin/bash
# stats about the languages in this repo

find . -type f -not -path '*/.*' \
 | sed 's/^\.//' \
 | cut -d. -f2 \
 | awk '{a[$0]++;t++}END{for (i in a) printf "%-8s %3d  (%5.2f%%)\n",i,a[i],100*a[i]/t}' \
 | sort -k2,2 -rn
