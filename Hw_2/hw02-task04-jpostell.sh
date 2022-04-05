#!/bin/bash

data=$1

echo "$data" | tr " " "\n" | sort | uniq -c | wc -l