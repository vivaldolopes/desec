#!/bin/bash

for url in $(cat dnsweb.txt); do
	host $url.$1 | grep "has address"
done
exit 1
