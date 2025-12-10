#!/bin/bash

echo "Provide path please"
read path

if [ -d "$path" ]; then 
echo "path exists"
else
echo "no path"
fi
