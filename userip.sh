#!/bin/bash
ipsec status 2>/dev/null | \
awk '
/ESTABLISHED/ {
    if (match($0, /.*\[([a-zA-Z]+)\]$/, arr)) {
        user = arr[0]          
        pending = 1           
    }
}
pending && /===/ {
    split($0, parts, "===")    
    ip_part = parts[2]        
    split(ip_part, ip, "/")    
    gsub(/ /, "", ip[1])
    print user " " ip[1]              
    pending = 0               
}'
