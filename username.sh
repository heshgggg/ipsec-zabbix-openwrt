#!/bin/sh
ipsec status 2>/dev/null | \
grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}\[[a-zA-Z]+\]' | \
sed -E 's/.*\[([a-zA-Z]+)\]/\1/' | \
uniq
