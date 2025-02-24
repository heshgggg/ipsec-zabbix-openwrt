#!/bin/sh
/usr/sbin/ipsec status 2>/dev/null | grep "ESTABLISHED" | wc -l
