#!/bin/bash


for row in 1 2 3 4 5; do
	for col in 1 2 3 4 5; do
		echo -n "$row.$col "
	done
	echo
done

for word in 1 2 hickel dickel; do
	echo $word
done
