#!/bin/bash

servers=("8.8.8.8" "1.1.1.1" "localhost")

for server in "${servers[@]}"; do
	if ping -c 1 "$server" &> /dev/null; then
		echo "$server is reachable"
	else
		echo "$server is not reachable"
	fi
done

echo "$(date) - $server reachable" >> ping.log
