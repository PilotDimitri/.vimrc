#!/bin/bash
find . -maxdepth 2 -not -path "*/node_modules/*" -not -path "*.git/*" -print 2>/dev/null | awk '!/\.$/ { \
    for (i=1; i<NF; i++) { \
        printf("%4s", "|") \
    } \
    print "-- "$NF \
}' FS='/'
