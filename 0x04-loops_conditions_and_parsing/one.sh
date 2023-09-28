#!/bin/bash

n=3
while [ $n -gt 0 ]
do
	echo "best"
	n=$(expr $n - 1)
done
