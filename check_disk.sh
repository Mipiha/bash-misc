#!/bin/bash

threshold=80

usage=$(df / | tail -1 | awk '{print $5}' | sed "s/%//")

echo "disk usage is : $usage%"

if [ "$usage" -ge "$threshold" ]; then
	echo "warning usage is above ${threshold}%!"
else
	echo "usage is under control"
fi
