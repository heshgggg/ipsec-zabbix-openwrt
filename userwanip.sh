#!/bin/bash
ipsec status 2>/dev/null | grep 'ESTABLISHED' | \
grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+\[[a-zA-Z]+\]' | \
sed -E 's/([0-9.]+)\[([a-zA-Z]+)\]/\2 \1/' | \
sort -u
