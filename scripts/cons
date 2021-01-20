#!/usr/bin/env bash

for ID in $(docker ps -q | awk '{print $1}'); do
  NAME=$(docker ps | grep "$ID" | awk '{print $NF}')
  MAP=$(docker ps -a | grep "$ID" | awk '{print $(NF-1)}')
  IP=$(docker inspect --format="{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" "$ID")
  printf "%s\n" "$IP" "$NAME" "$MAP" && printf "========== \n"
done

