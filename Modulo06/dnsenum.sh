#!/bin/bash

for url in $(cat dnsweb.txt); do
	host $url.$1 | grep "has address" | cut -d " " -f4 | head -n1
done
exit 1
