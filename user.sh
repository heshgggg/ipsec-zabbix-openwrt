#!/bin/bash

users=$(/somepath/username.sh)
ips=$(/somepath/userip.sh)

user_array=($users)
ip_array=($ips)

for i in "${!user_array[@]}"; do
  echo "${user_array[$i]} ${ip_array[$i]}"
done

